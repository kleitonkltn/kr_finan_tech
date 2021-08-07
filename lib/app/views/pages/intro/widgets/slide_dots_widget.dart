import 'package:flutter/material.dart';
import 'dot_widget.dart';

class SlideDotsWidget extends StatelessWidget {
  final int currentPage;

  const SlideDotsWidget({required this.currentPage}) : super();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Dot(
            index: 0,
            isActive: currentPage == 0,
          ),
          Dot(
            index: 1,
            isActive: currentPage == 1,
          ),
          Dot(
            index: 2,
            isActive: currentPage == 2,
          ),
        ],
      ),
    );
  }
}
