import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Color(0xffFFBB3B);
  static Color backGround = Color(0xff1E1E1E);
  static Color white = Color(0xffffffff);
  static Color black = Color(0xff121312);
  static Color grey = Color(0xff282A28);
  static Color red = Color(0xffE82626);
  static Color green = Color(0xff57AA53);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: backGround,
    appBarTheme: AppBarTheme(
      backgroundColor: backGround,
      foregroundColor: primary,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: primary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixStyle: TextStyle(color: white),
      suffixIconColor: white,
      hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: white,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: grey),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: grey),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: grey),
        borderRadius: BorderRadius.circular(15),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: grey),
        borderRadius: BorderRadius.circular(15),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.red),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        backgroundColor: primary,
        foregroundColor: black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: grey,
      selectedItemColor: primary,
      unselectedItemColor: white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      labelLarge:
          TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: black),
      bodySmall:
          TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: white),
      bodyMedium:
          TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: white),
      bodyLarge:
          TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: black),
      titleSmall:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: white),
      titleLarge:
          TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: white),
      headlineLarge:
          TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: white),
    ),
  );
}
