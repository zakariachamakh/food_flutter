import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/components/custom_botton.dart';
import 'package:food/components/image_text_vertical.dart';
import 'package:food/components/text_action.dart';
import 'package:food/models/onborading_model.dart';
import 'package:food/utilits/colors_schema.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  OnboradingModel _model = OnboradingModel('assets/images/succes.png',
      'Welcome', 'Before Enjoying Foodmedia Services Please Register First');

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 10,
          child: ImageTextVertical(
            image: _model.image,
            title: _model.title,
            subTitle: _model.subTitle,
          ),
        ),
        Flexible(
          flex: 1,
          child: CustomButton(
            text: 'Create Account',
            callbackAction: () {},
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Flexible(
          flex: 1,
          child: CustomButton(
            text: 'Login',
            callbackAction: () {},
            buttonColor: ColorApp.green700,
            textColor: ColorApp.primaryColor,
          ),
        ),
        Flexible(
          flex: 1,
          child: TextAction(
            text: 'By Logging In Or Registering, You Have Agreed To',
            textAction: 'The Terms',
            callback: () {},
            textSize: 10.sp,
            textActionSize: 10.sp,
          ),
        )
      ],
    );
  }
}
