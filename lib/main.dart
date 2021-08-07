import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app/modules/app_module.dart';
import 'app/views/pages/main/app_widget.dart';

void main() => runApp(ModularApp(module: AppModule(), child: AppWidget()));
