import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets.constant.dart';
import '../light_theme.dart';
import '../widgets/filled_buttons.widget.dart';
import '../widgets/outline_buttons.widget.dart';

class LoginRegistrationScreen extends StatelessWidget {
  const LoginRegistrationScreen({Key? key}) : super(key: key);
  static const loginText = 'LOGIN';
  static const newRegistration = 'NEW REGISTRATION';
  static const welomeText = 'Welcome!';
  static const welcomeBodyText =
      'A collection of materials , books or media that are accessible for use and not just for display purposes.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 88.h,
                // ),
                SizedBox(
                  height: 309.h,
                  width: 350.w,
                  child: loginRegistrationLogo,
                ),
                Container(
                  width: 177.w,
                  child: Text(
                    welomeText,
                    textAlign: TextAlign.center,
                    style: StyleText(context: context)
                        .defaultTextTheme
                        .headlineLarge,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  width: 309.w,
                  child: Text(
                    welcomeBodyText,
                    textAlign: TextAlign.center,
                    style:
                        StyleText(context: context).defaultTextTheme.bodySmall,
                    maxLines: 3,
                  ),
                ),
                SizedBox(
                  height: 56.h,
                ),
                ButtonFilled(
                  height: 50.h,
                  width: 300.w,
                  child: MaterialButton(
                    onPressed: () {},
                    color: blueButtonColor,
                    child: Text(
                      loginText,
                      style: StyleText(context: context)
                          .defaultTextTheme
                          .labelSmall,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                OutlinedButtons(
                    height: 50.h,
                    width: 300.w,
                    child: Text(newRegistration,
                        style: StyleText(context: context)
                            .defaultTextTheme
                            .displaySmall))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
