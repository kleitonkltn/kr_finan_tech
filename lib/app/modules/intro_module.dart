import 'package:flutter_modular/flutter_modular.dart';

import '../controller/intro_controller.dart';
import '../views/pages/intro/intro_page.dart';

class IntroModule extends Module {
  @override
  List<Bind> get binds => [Bind((i) => IntroController())];
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, args) => IntroPage())];
}
