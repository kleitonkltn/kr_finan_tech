import 'package:flutter/material.dart';

import '../../../../core/consts/colors_consts.dart';

class Dot extends StatelessWidget {
  final int index;
  final bool isActive;

  const Dot({required this.isActive, required this.index}) : super();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              isActive ? Theme.of(context).primaryColor : ColorsConst.grey400,
        ),
        height: 6,
        width: 6,
      ),
    );
  }
}
