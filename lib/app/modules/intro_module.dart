import 'package:flutter_modular/flutter_modular.dart';

import '../controller/intro_controller.dart';
import '../views/pages/intro/intro_page.dart';




class IntroModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => IntroController())];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => IntroPage())];
  static Inject get to => Inject<IntroModule>.of();
}
