import 'package:flutter/material.dart';
import 'package:food/utilits/colors_schema.dart';

class TextAction extends StatelessWidget {
  TextAction(
      {Key? key,
      this.mainAxisAlignment = MainAxisAlignment.center,
      required this.text,
      required this.textAction,
      required this.callback,
      this.textSize = 14,
      this.textActionSize = 14})
      : super(key: key);
  late MainAxisAlignment mainAxisAlignment;
  late String text;
  late String textAction;
  late VoidCallback callback;
  late double textSize;
  late double textActionSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: textSize, wordSpacing: 0.1),
        ),
        TextButton(
          onPressed: callback,
          child: Text(
            textAction,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontSize: textActionSize, color: ColorApp.primaryColor),
          ),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
      ],
    );
  }
}
