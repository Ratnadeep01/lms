import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/widgets/text_box.widget.dart';

import '../assets.constant.dart';
import '../light_theme.dart';
import '../widgets/filled_buttons.widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 56.h,
            ),
            SizedBox(height: 260.h, width: 260.w, child: loginLogo),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Login To Your Account',
              style: StyleText(context: context).defaultTextTheme.titleLarge,
            ),
            SizedBox(
              height: 35.h,
            ),
            TextBox(
              hintText: 'Card Number',
            ),
            SizedBox(
              height: 18.h,
            ),
            TextBox(hintText: 'Password'),
            SizedBox(
              height: 144.h,
            ),
            ButtonFilled(
              height: 50.h,
              width: 300.w,
              child: MaterialButton(
                onPressed: () {},
                color: blueButtonColor,
                child: Text(
                  'LOGIN',
                  style:
                      StyleText(context: context).defaultTextTheme.labelSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
