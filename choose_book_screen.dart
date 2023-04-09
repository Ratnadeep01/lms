import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_management/widgets/filled_buttons.widget.dart';
import 'package:library_management/widgets/search_box.widget.dart';

import '../light_theme.dart';

class ChooseBook extends StatelessWidget {
  ChooseBook({Key? key}) : super(key: key);

  DocumentReference ref = FirebaseFirestore.instance.collection('uid').doc('1');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 48.h,
              ),
              SearchBox(height: 382.h, width: 45.w),
              SizedBox(
                height: 45.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Maths',
                    style:
                        StyleText(context: context).defaultTextTheme.titleLarge,
                  ),
                  Text(
                    'View All',
                    style: StyleText(context: context)
                        .defaultTextTheme
                        .headlineSmall,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection('CSE')
                    .doc('1')
                    .collection('Maths')
                    .get(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  final documents = snapshot.data!.docs;

                  print(documents[0]['Pages']);
                  return SizedBox(
                    height: 189.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, int) {
                        return Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),
                              height: 150.h,
                              width: 140.w,
                              //child: ,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.5,
                                        spreadRadius: 0,
                                        offset: Offset(0, 5))
                                  ],
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                height: 75.h,
                                width: 140.w,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Text(
                                      'Engineering Maths',
                                      style: StyleText(context: context)
                                          .defaultTextTheme
                                          .headlineMedium,
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    ButtonFilled(
                                      height: 20.h,
                                      width: 90.w,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: blueButtonColor,
                                        child: Text('View',
                                            style: GoogleFonts.roboto(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: whiteTextColor)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 22.w,
                        );
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
