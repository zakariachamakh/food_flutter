import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/components/title_and_subtitle.dart';
import 'package:food/utilits/colors_schema.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TitleSubTitle(
          title: 'Forget Password',
          subTitle: 'Enter your registered email below',
        ),
        Text(
          'Email address',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 12.h, color: ColorApp.black),
        ),
        TextFormField(
          cursorColor: ColorApp.primaryColor,
          decoration: InputDecoration(
            labelText: 'Eg namaemail@emailkamu.com',
            prefixIcon: Icon(
              Icons.people,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: ColorApp.grey,
            focusColor: ColorApp.grey,
            hoverColor: ColorApp.primaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Remember the password?',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontSize: 10.sp, wordSpacing: 0.1),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sign in .',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 10.sp, color: ColorApp.primaryColor),
              ),
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Submit',
            style: TextStyle(fontFamily: 'Inter'),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 78.w, vertical: 10.h),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
