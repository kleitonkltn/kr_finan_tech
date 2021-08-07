import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/app_controller.dart';
import '../core/consts/routers_const.dart';
import '../core/local_storage/local_storage.dart';
import '../interfaces/auth_repository_interface.dart';
import '../interfaces/shared_repository_interface.dart';
import '../repositories/auth_repository.dart';
import '../repositories/shared_repository.dart';
import '../views/pages/main/app_widget.dart';
import '../views/pages/splash/splash_page.dart';
import 'home_module.dart';
import 'intro_module.dart';
import 'login_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<ISharedRepositoryInterface>((i) => SharedRepository()),
        Bind<IAuthRepository>((i) => AuthRepository(i())),
        Bind((i) => LocalStorage()),
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(RoutersConst.splash,
            child: (context, args) => SplashPage(),
            transition: TransitionType.noTransition),
        ModuleRoute(RoutersConst.intro, module: IntroModule()),
        ModuleRoute(RoutersConst.home, module: HomeModule()),
        ModuleRoute(RoutersConst.login, module: LoginModule()),
      ];
}
