import 'package:flutter/material.dart';

class OutlinedButtons extends StatelessWidget {
  double height;
  double width;
  Widget? child;
  OutlinedButtons(
      {Key? key, required this.height, required this.width, required child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: () {},
        child: child,
      ),
    );
  }
}
