import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utilits/colors_schema.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.text,
      this.textColor = ColorApp.grey,
      this.buttonColor = ColorApp.primaryColor,
      required this.callbackAction})
      : super(key: key);

  late String text;
  late Color? textColor;
  late Color? buttonColor;
  late VoidCallback callbackAction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callbackAction,
      child: Text(
        text,
        style: TextStyle(fontFamily: 'Inter', color: textColor),
      ),
      style: ButtonStyle(
        // padding: MaterialStateProperty.all(
        //   EdgeInsets.symmetric(horizontal: 78.w, vertical: 10.h),
        // ),
        fixedSize: MaterialStateProperty.all(
          Size(250.w, 36.h),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor!),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
