import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTextVertical extends StatelessWidget {
  ImageTextVertical(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key) ;


  late String image;
  late String title;
  late String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: 154.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 36.h, bottom: 16.h),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            subTitle,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
