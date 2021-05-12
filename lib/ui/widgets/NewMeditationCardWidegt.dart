import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medidation_app/resource/AppColor.dart';
import 'package:medidation_app/resource/AppFont.dart';
import 'package:medidation_app/resource/AppImages.dart';

class NewMeditationCardWidegt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 10,
        color: AppColor.newMeditationCardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Happiness",
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: AppFont.XX_LARGE),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Daily Calm",
                          style: TextStyle(
                              color: AppColor.white, fontSize: AppFont.MEDIUM),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Text(
                            "7 Steps | 5-11 Min",
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: AppFont.VERY_SMALL),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(AppImages.SUN_OUTER)),
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(AppImages.SUN_INNER))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
