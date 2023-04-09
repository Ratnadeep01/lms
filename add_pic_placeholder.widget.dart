import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/light_theme.dart';

import '../assets.constant.dart';

class ProfilePlaceholder extends StatelessWidget {
  const ProfilePlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdvancedAvatar(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: whiteTextColor,
          boxShadow: const [
            BoxShadow(
                color: Color(0x29000000),
                offset: Offset(2, 2),
                blurRadius: 8,
                spreadRadius: 0)
          ]),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 37.h, width: 37.w, child: addHeadLogo),
            const SizedBox(
              height: 4,
            ),
            SizedBox(height: 32.h, width: 72.w, child: addBodyLogo)
          ],
        ),
      ),
      size: 120.r,
      children: [
        AlignCircular(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 16.r,
              backgroundColor: blueButtonColor,
              child: Center(
                child: Icon(
                  Icons.camera_alt_sharp,
                  size: 15.r,
                  color: cameraIconColor,
                ),
              ),
            ))
      ],
    );
  }
}
