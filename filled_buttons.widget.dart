import 'package:flutter/material.dart';

class ButtonFilled extends StatelessWidget {
  double height;
  double width;
  Widget child;

  ButtonFilled(
      {super.key,
      required this.height,
      required this.width,
      required this.child});
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width, child: child);
  }
}
