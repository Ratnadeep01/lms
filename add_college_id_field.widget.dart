import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../light_theme.dart';

class AddFileBox extends StatelessWidget {
  const AddFileBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      width: 382.w,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 8,
              color: Color(0x29000000),
            )
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'College Id Proof(if any)',
              style: StyleText(context: context).defaultTextTheme.titleSmall,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 25,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: lightGreyColor,
                    width: 1,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      height: 16,
                      width: 16,
                      child: Icon(
                        Icons.file_upload_outlined,
                        size: 15,
                        color: blueButtonColor,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add file',
                    style: GoogleFonts.roboto(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: blueButtonColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
