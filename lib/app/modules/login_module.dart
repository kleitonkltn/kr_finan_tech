import 'package:flutter_modular/flutter_modular.dart';

import '../controller/login_controller.dart';
import '../views/pages/login/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [Bind((i) => LoginController())];
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, args) => LoginPage())];
}
