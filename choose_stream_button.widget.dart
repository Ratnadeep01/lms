import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../light_theme.dart';

class StreamButton extends StatelessWidget {
  StreamButton({Key? key, required this.streamName}) : super(key: key);
  String streamName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: cameraIconColor, borderRadius: BorderRadius.circular(10.r)),
      height: 45.h,
      width: 170.w,
      child: Center(
        child: Text(
          streamName,
          style: StyleText(context: context).defaultTextTheme.displayMedium,
        ),
      ),
    );
  }
}
