import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/components/custom_botton.dart';
import 'package:food/components/input_titled.dart';
import 'package:food/components/text_action.dart';
import 'package:food/components/title_and_subtitle.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            flex: 2,
            child: TitleSubTitle(
              title: 'Forget Password',
              subTitle: 'Enter your registered email below',
            ),
          ),
          Flexible(
            flex: 4,
            child: Column(
              children: [
                InputTitled(
                  title: 'Email address',
                  placeHolder: 'Eg namaemail@emailkamu.com',
                ),
                TextAction(
                  text: 'Remember the password?',
                  textAction: 'Sing in',
                  callback: () {},
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: CustomButton(
              text: 'Submit',
              callbackAction: () {},
            ),
          ),
        ],
      ),
    );
  }
}
