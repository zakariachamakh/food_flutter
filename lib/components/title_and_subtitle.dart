import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSubTitle extends StatelessWidget {
  TitleSubTitle({Key? key, required this.title, required this.subTitle})
      : super(key: key);
  late String title;
  late String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              Theme.of(context).textTheme.headline5!.copyWith(fontSize: 20.h),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
