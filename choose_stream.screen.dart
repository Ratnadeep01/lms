import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../light_theme.dart';
import '../widgets/choose_stream_button.widget.dart';
import '../widgets/filled_buttons.widget.dart';

class ChooseStream extends StatelessWidget {
  const ChooseStream({Key? key}) : super(key: key);

  static const List<String> streamName = [
    'CSE',
    'ECE',
    'EE',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 33.h,
            ),
            Text(
              'Hello Ratnadeep!!',
              style: StyleText(context: context).defaultTextTheme.headlineLarge,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              'Choose Your Stream',
              style: StyleText(context: context).defaultTextTheme.bodyMedium,
            ),
            SizedBox(
              height: 45.h,
            ),
            Container(
              height: 187.h,
              child: GridView.builder(
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 100 / 25,
                  crossAxisCount: 2,
                  mainAxisSpacing: 26.h,
                  crossAxisSpacing: 42.w,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return StreamButton(
                    streamName: streamName[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 320.h,
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
                          'NEXT',
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
    );
  }
}
