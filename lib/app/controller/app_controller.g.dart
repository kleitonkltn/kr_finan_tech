// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$themeappAtom = Atom(name: '_AppControllerBase.themeapp');

  @override
  IThemeAppInterface get themeapp {
    _$themeappAtom.reportRead();
    return super.themeapp;
  }

  @override
  set themeapp(IThemeAppInterface value) {
    _$themeappAtom.reportWrite(value, super.themeapp, () {
      super.themeapp = value;
    });
  }

  final _$themeModeAtom = Atom(name: '_AppControllerBase.themeMode');

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  final _$loadThemeAsyncAction = AsyncAction('_AppControllerBase.loadTheme');

  @override
  Future<void> loadTheme() {
    return _$loadThemeAsyncAction.run(() => super.loadTheme());
  }

  final _$setThemeDataAsyncAction =
      AsyncAction('_AppControllerBase.setThemeData');

  @override
  Future<void> setThemeData(ThemeMode themeMode, {bool savedShared = true}) {
    return _$setThemeDataAsyncAction
        .run(() => super.setThemeData(themeMode, savedShared: savedShared));
  }

  @override
  String toString() {
    return '''
themeapp: ${themeapp},
themeMode: ${themeMode}
    ''';
  }
}
