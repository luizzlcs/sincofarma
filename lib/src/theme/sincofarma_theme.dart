import 'package:flutter/material.dart';

final class SincofarmaTheme {
  static const greenColor = Color(0xFF1DB336);
  static const whiteColor = Color(0xffFFFFFF);
  static const blueColor = Color(0xFF282B5D);
  static const naturalBlueColor = Color(0xFF494C83);
  static const lightGreyColor = Color(0xFFF6F6F6);
  static const greyColor = Color(0xFF777777);
  static const darkGreyColor = Color(0xFF434343);
  static const blackColor = Color(0xFF000000);

  static final _defaultInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: blueColor, width: 2));

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: whiteColor),
    useMaterial3: true,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: whiteColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: whiteColor,
      labelStyle: const TextStyle(
        fontSize: 15,
        color: greyColor,
        fontWeight: FontWeight.w400,
      ),
      floatingLabelStyle:
          const TextStyle(color: greyColor, fontWeight: FontWeight.w600),
      isDense: true,
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      errorBorder: _defaultInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(
          color: blueColor,
        ),
        foregroundColor: blueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
            fontFamily: 'Inter', fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: whiteColor,
        backgroundColor: greenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          color: whiteColor,
          fontFamily: 'Inter',
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );

  static final darkTheme = lightTheme;

  static const fonteSizeInter12px = TextStyle(
    fontFamily: 'Inter',
    color: blackColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
  static const fonteSizeInter15px = TextStyle(
    fontFamily: 'Inter',
    color: blackColor,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static const titleStyle = TextStyle(
    fontFamily: 'Inter',
    color: blueColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const titleSmallBold = TextStyle(
    fontFamily: 'Inter',
    color: blueColor,
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );
  static const titleSmallRegular = TextStyle(
    fontFamily: 'Inter',
    color: blueColor,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const subTitleSmalldescricao = TextStyle(
    fontFamily: 'Inter',
    color: darkGreyColor,
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );
  static const subTitleDecriptionRoboto = TextStyle(
    fontFamily: 'Roboto',
    color: darkGreyColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  
  static const titlePoppins14px = TextStyle(
    fontFamily: 'Poppins',
    color: blackColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

