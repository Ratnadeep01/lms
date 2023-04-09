import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/light_theme.dart';
import 'package:library_management/widgets/add_pic_placeholder.widget.dart';
import 'package:library_management/widgets/text_box.widget.dart';

import '../widgets/add_college_id_field.widget.dart';
import '../widgets/filled_buttons.widget.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80.h,
              ),
              const ProfilePlaceholder(),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Add Photo',
                style: StyleText(context: context).defaultTextTheme.titleSmall,
              ),
              SizedBox(
                height: 80.h,
              ),
              TextBox(hintText: 'Name'),
              SizedBox(
                height: 26.h,
              ),
              TextBox(hintText: 'University Roll No.'),
              SizedBox(
                height: 26.h,
              ),
              TextBox(hintText: 'Mobile No.'),
              SizedBox(
                height: 26.h,
              ),
              TextBox(hintText: 'Email Id'),
              SizedBox(
                height: 26.h,
              ),
              const AddFileBox(),
              SizedBox(
                height: 72.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ButtonFilled(
                  height: 40.h,
                  width: 173.w,
                  child: MaterialButton(
                    onPressed: () {},
                    color: blueButtonColor,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'SAVE & NEXT',
                            style: StyleText(context: context)
                                .defaultTextTheme
                                .labelSmall,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Align(
                            alignment: const Alignment(0, -0.2),
                            child: SizedBox(
                              height: 15,
                              width: 15,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 20.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
