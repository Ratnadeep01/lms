import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      buttonTheme: buttonTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      inputDecorationTheme: inputDecorationTheme,
    );
  }
}

const whiteTextColor = Color(0xFFFFFFFF);
const blackTextColor = Color(0xFF000000);
const lightGreyColor = Color(0xFFDFDFDF);
const greyTextColor = Color(0xFF656464);
const deepGreyColor = Color(0xFF626161);
const blueButtonColor = Color(0xFF04009E);
const cameraIconColor = Color(0xFFDCDBFF);

class StyleText {
  late BuildContext context;
  StyleText({required this.context});
  final defaultTextTheme = TextTheme().copyWith(
    headlineLarge: GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 40.sp, color: blackTextColor),
    bodySmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 16.sp, color: greyTextColor),
    labelSmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 16.sp, color: whiteTextColor),
    displaySmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 16.sp, color: blueButtonColor),
    titleSmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w400, fontSize: 16.sp, color: deepGreyColor),
    titleLarge: GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 24.sp, color: blackTextColor),
    bodyMedium: GoogleFonts.roboto(
        fontWeight: FontWeight.w400, fontSize: 20.sp, color: blackTextColor),
    displayMedium: GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 20.sp, color: blueButtonColor),
    headlineSmall: GoogleFonts.roboto(
        fontWeight: FontWeight.w400, fontSize: 16.sp, color: blackTextColor),
    headlineMedium: GoogleFonts.roboto(
        fontWeight: FontWeight.w500, fontSize: 11.sp, color: blackTextColor),
  );
}

final buttonTheme = const ButtonThemeData().copyWith(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
);

final outlinedButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      side: const MaterialStatePropertyAll(
          BorderSide(width: 2, color: blueButtonColor))),
);

final inputDecorationTheme = InputDecorationTheme().copyWith(
  contentPadding: const EdgeInsets.only(left: 20, top: 15, bottom: 20),
  filled: false,
  border: InputBorder.none,
);
