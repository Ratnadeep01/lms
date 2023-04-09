import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../light_theme.dart';
import '../widgets/choose_sem_button.widget.dart';
import '../widgets/filled_buttons.widget.dart';

class ChooseSem extends StatelessWidget {
  ChooseSem({Key? key}) : super(key: key);

  List<String> sem = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 72.h,
            ),
            Text(
              'Choose Your Semester',
              style: StyleText(context: context).defaultTextTheme.bodyMedium,
            ),
            SizedBox(
              height: 48.h,
            ),
            Container(
              height: 293.h,
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 100 / 100,
                  crossAxisCount: 3,
                  mainAxisSpacing: 26.h,
                  crossAxisSpacing: 35.w,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return SemButton(
                    sem: sem[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 280.h,
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
