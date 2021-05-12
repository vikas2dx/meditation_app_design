import 'package:flutter/material.dart';
import 'package:medidation_app/resource/AppColor.dart';
import 'package:medidation_app/resource/AppImages.dart';
import 'package:medidation_app/resource/AppStrings.dart';

class HomeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: Stack(
        children: [
          Image(
            width: double.infinity,
            fit: BoxFit.cover,
            height: 313,
            image: AssetImage(AppImages.HEADER_BACKGROUND),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Image(image: AssetImage(AppImages.HOME_GIRL))),
          Positioned(
            top: 90,
            left: 10,
            child: Text(
              AppStrings.LOVE_AND_ACCEPT,
              style: TextStyle(color: AppColor.white, fontSize: 28),
            ),
          ),
          Positioned(
            top: 70,
            right: 0,
            child: Image(
              image: AssetImage(AppImages.NATURE_RIGHT),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image(
              image: AssetImage(AppImages.NATURE_LEFT),
            ),
          )
        ],
      ),
    );
  }
}
