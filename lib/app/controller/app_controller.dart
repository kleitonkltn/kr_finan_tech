import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../core/theme/app_theme_factory.dart';
import '../interfaces/shared_repository_interface.dart';
import '../interfaces/theme_app_interface.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final sharedRepository = Modular.get<ISharedRepositoryInterface>();
  _AppControllerBase() {
    loadTheme();
  }

  @observable
  IThemeAppInterface themeapp = AppThemeFactory.getTheme(ThemeMode.light);

  @observable
  ThemeMode themeMode = ThemeMode.light;

  @action
  Future<void> loadTheme() async {
    await sharedRepository.readThemeMode().then((mode) {
      themeMode = mode;
      themeapp = AppThemeFactory.getTheme(ThemeMode.light);
      setThemeData(mode, savedShared: false);
    });
  }

  @action
  Future<void> setThemeData(ThemeMode themeMode,
      {bool savedShared = true}) async {
    themeapp = AppThemeFactory.getTheme(themeMode);
    if (savedShared) {
      await sharedRepository.saveThemeMode(themeMode);
    }
  }
}
