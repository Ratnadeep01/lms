import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../light_theme.dart';

class TextBox extends StatelessWidget {
  String hintText;
  TextBox({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 8,
                color: Color(0x29000000),
              )
            ],
            borderRadius: BorderRadius.circular(10)),
        width: 382.w,
        height: 46.h,
        child: TextField(
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle:
                  StyleText(context: context).defaultTextTheme.titleSmall),
        ));
  }
}
