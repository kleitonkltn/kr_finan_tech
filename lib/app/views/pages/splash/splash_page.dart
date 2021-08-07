import 'package:finan_tech/app/core/consts/routers_const.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supercharged/supercharged.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> initializeDefault() async {
    var app = await Firebase.initializeApp();
    print('Initialized default app $app');
  }

  @override
  void initState() {
    super.initState();
    initializeDefault();
    2
        .seconds
        .delay
        .whenComplete(() => Modular.to.pushNamed(RoutersConst.intro));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red[200],
      ),
    );
  }
}
