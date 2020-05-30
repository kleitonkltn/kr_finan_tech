import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../core/responses/response_builder.dart';
import '../core/responses/response_default.dart';
import '../interfaces/auth_repository_interface.dart';



class AuthRepository implements IAuthRepository {
  final FirebaseAuth firebaseAuth;

  AuthRepository(this.firebaseAuth);

  @override
  Future<DefaultResponse> doLoginEmailPassword(
      {String email, String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());

      return BuilderResponse.success<FirebaseUser>(
          object: await firebaseAuth.currentUser());
    } on Exception catch (e) {
      return BuilderResponse.failed(object: e, message: e.toString());
    }
  }

  @override
  Future<DefaultResponse> doLoginGoogle() async {
    try {
      var googleSignIn = GoogleSignIn();

      var googleSignInAccount = await googleSignIn.signIn();

      var googleSignInAuthentication = await googleSignInAccount.authentication;
 
      FirebaseUser firebaseUser;

      if (googleSignInAuthentication.accessToken != null) {
        var credential = GoogleAuthProvider.getCredential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);

        await firebaseAuth.signInWithCredential(credential).then((auth) {
          firebaseUser = auth.user;
        });
      }
      return BuilderResponse.success<FirebaseUser>(
          object: firebaseUser, message: 'Logou com sucesso');
    } on Exception catch (e) {
      return BuilderResponse.failed(
          object: e, message: 'Falha ao Logar com Google. e: ${e.toString()}');
    }
  }

  @override
  Future<DefaultResponse> getUser() async {
    try {
      return BuilderResponse.success<FirebaseUser>(
          object: await firebaseAuth.currentUser());
    } on Exception catch (e) {
      return BuilderResponse.failed(object: e, message: e.toString());
    }
  }

  @override
  Future<DefaultResponse> logOut() async {
    try {
      await firebaseAuth.signOut();
      return BuilderResponse.success();
    } on Exception catch (e) {
      return BuilderResponse.failed(object: e, message: e.toString());
    }
  }

  @override
  Future<DefaultResponse> doRegisterEmailPassword(
      {String email, String password}) async {
    try {
      return await firebaseAuth
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then(
        (auth) {
          return BuilderResponse.success<FirebaseUser>(object: auth.user);
        },
      );
    } on Exception catch (e) {
      return BuilderResponse.failed(object: e, message: e.toString());
    }
  }

 
}
