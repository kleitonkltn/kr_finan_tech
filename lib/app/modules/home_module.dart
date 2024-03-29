import 'package:flutter_modular/flutter_modular.dart';

import '../controller/home_controller.dart';
import '../views/pages/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [Bind((i) => HomeController())];
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, args) => HomePage())];
}
