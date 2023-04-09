import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../light_theme.dart';

class SearchBox extends StatelessWidget {
  double height;
  double width;
  SearchBox({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: cameraIconColor, borderRadius: BorderRadius.circular(10)),
        width: 382.w,
        height: 45.h,
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 2),
              hintText: 'Search',
              prefixIcon: Container(
                height: 20.h,
                width: 20.w,
                child: const Icon(
                  Icons.search,
                  color: blueButtonColor,
                ),
              ),
              hintStyle:
                  StyleText(context: context).defaultTextTheme.displaySmall),
        ));
  }
}
