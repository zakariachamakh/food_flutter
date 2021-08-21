import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/components/image_text_vertical.dart';
import 'package:food/models/onborading_model.dart';
import 'package:food/utilits/colors_schema.dart';
import 'package:page_indicator/page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<OnboradingModel> _pages = [];
  late bool _showing;

  @override
  void initState() {
    _pages = [
      OnboradingModel(
        'assets/images/onbording/map.png',
        'Nearby restaurants',
        'You don\'t have to go far to find a good restaurant, we have provided all the restaurants that is ear you',
      ),
      OnboradingModel(
        'assets/images/onbording/order.png',
        'Select the Favorites Menu',
        'Now eat well, don\'t leave the house,You can choose your favorite food only with one click',
      ),
      OnboradingModel(
        'assets/images/onbording/food.png',
        'Good food at a cheap price',
        'You can eat at expensive restaurants with affordable price',
      ),
    ];
    _showing = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageIndicatorContainer(
          child: PageView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ImageTextVertical(
                  image: _pages[index].image,
                  title: _pages[index].title,
                  subTitle: _pages[index].subTitle);
            },
            itemCount: _pages.length,
            onPageChanged: (index) {
              if (index == _pages.length - 1) {
                setState(() {
                  _showing = true;
                });
              } else {
                setState(() {
                  _showing = false;
                });
              }
            },
          ),
          length: _pages.length,
          indicatorSelectorColor: ColorApp.primaryColor,
          indicatorColor: Colors.grey.shade400,
          padding: EdgeInsets.only(bottom: 14.h),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            (!_showing)
                ? TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  )
                : Container(),
            SizedBox(
              width: 24.w,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_sharp,
                color: ColorApp.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
