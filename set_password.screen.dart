import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/assets.constant.dart';
import 'package:library_management/widgets/text_box.widget.dart';

import '../light_theme.dart';
import '../widgets/filled_buttons.widget.dart';

class PasswordSetScreen extends StatelessWidget {
  const PasswordSetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 56.h,
              ),
              Center(
                  child: SizedBox(
                      height: 260.h, width: 260.w, child: setPasswordLogo)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Protect Your Account',
                style: StyleText(context: context).defaultTextTheme.titleLarge,
              ),
              SizedBox(
                height: 24.h,
              ),
              TextBox(hintText: 'Set Password'),
              SizedBox(
                height: 24.h,
              ),
              TextBox(hintText: 'Confirm Password'),
              SizedBox(
                height: 128.h,
              ),
              Center(
                child: ButtonFilled(
                  height: 50.h,
                  width: 300.w,
                  child: MaterialButton(
                    onPressed: () {},
                    color: blueButtonColor,
                    child: Text(
                      'REGISTER',
                      style: StyleText(context: context)
                          .defaultTextTheme
                          .labelSmall,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
