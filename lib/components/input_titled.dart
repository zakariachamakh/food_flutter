import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utilits/colors_schema.dart';

class InputTitled extends StatelessWidget {
  InputTitled({Key? key, required this.title, required this.placeHolder})
      : super(key: key);
  late String title;
  late String placeHolder;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 12.h, color: ColorApp.black),
        ),
        SizedBox(
          height: 8.h,
        ),
        TextFormField(
          cursorColor: ColorApp.primaryColor,
          decoration: InputDecoration(
            labelText: placeHolder,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: ColorApp.grey,
            focusColor: ColorApp.grey,
            hoverColor: ColorApp.primaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
              borderSide: BorderSide(color: Colors.teal),
            ),
          ),
        ),
      ],
    );
  }
}
