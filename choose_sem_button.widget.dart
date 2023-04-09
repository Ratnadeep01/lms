import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../light_theme.dart';

class SemButton extends StatelessWidget {
  String sem;
  SemButton({Key? key, required this.sem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: 85.w,
      decoration: BoxDecoration(
          color: cameraIconColor, borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          sem,
          style: StyleText(context: context).defaultTextTheme.displayMedium,
        ),
      ),
    );
    ;
  }
}
