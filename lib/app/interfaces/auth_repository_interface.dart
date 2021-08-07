import '../core/responses/response_default.dart';

abstract class IAuthRepository {
  Future<DefaultResponse> doLoginGoogle();
  Future<DefaultResponse> doLoginEmailPassword(
      {required String email, required String password});
  Future<DefaultResponse> doRegisterEmailPassword(
      {required String email, required String password});
  Future<DefaultResponse> getUser();
  Future<DefaultResponse> logOut();
}
