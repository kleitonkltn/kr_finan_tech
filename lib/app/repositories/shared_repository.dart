import 'package:flutter/material.dart';
import '../core/local_storage/local_storage.dart';
import '../interfaces/shared_repository_interface.dart';

class SharedRepository implements ISharedRepositoryInterface {
  static const String constThememode = 'theme_mode';
  static const String constThemModeDark = 'ThemeMode.dark';
  static const String constThemeModeLight = 'ThemeMode.light';
  @override
  String readUserInfo() {
    return '';
  }

  @override
  Future<void> saveUserInfo(String userInfo) async {}

  @override
  Future<ThemeMode> readThemeMode() async {
    return await LocalStorage.getValue<String>(constThememode).then((value) {
      switch (value) {
        case constThemModeDark:
          return ThemeMode.dark;

        case constThemeModeLight:
          return ThemeMode.light;

        default:
          return ThemeMode.light;
      }
    });
  }

  @override
  Future<bool> saveThemeMode(ThemeMode themeMode) async {
    return await LocalStorage.setValue<String>(
        constThememode, themeMode.toString());
  }
}
