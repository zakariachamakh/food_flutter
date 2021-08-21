import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utilits/colors_schema.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity.standard,
  primaryColorBrightness: Brightness.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused))
          return ColorApp.primaryColor;
        if (states.contains(MaterialState.hovered))
          return ColorApp.primaryColor;
        return ColorApp.primaryColor;
      }),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused))
          return ColorApp.primaryColor;
        if (states.contains(MaterialState.hovered))
          return ColorApp.primaryColor;
        return ColorApp.primaryColor;
      }),
    ),
  ),
  primaryColor: ColorApp.primaryColor,
  primaryColorLight: ColorApp.primaryColor,
  accentColor: ColorApp.primaryColor,
  canvasColor: ColorApp.grey,
  shadowColor: ColorApp.black,
  iconTheme: IconThemeData(
    color: ColorApp.primaryColor,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 112.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: ColorApp.black,
    ),
    headline2: TextStyle(
      fontSize: 96.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      color: ColorApp.black,
    ),
    headline3: TextStyle(
      fontSize: 68.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      color: ColorApp.black,
    ),
    headline4: TextStyle(
      fontSize: 28.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
      color: ColorApp.black,
    ),
    headline5: TextStyle(
      fontSize: 24.sp,
      fontFamily: 'Inter',
      wordSpacing: 1.05,
      fontWeight: FontWeight.w500,
      color: ColorApp.black,
    ),
    headline6: TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
      color: ColorApp.greyBlue,
    ),
  ),
);
