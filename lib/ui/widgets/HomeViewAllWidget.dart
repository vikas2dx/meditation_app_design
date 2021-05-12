import 'package:flutter/material.dart';
import 'package:medidation_app/resource/AppColor.dart';
import 'package:medidation_app/resource/AppFont.dart';

class HomeViewAllWidget extends StatelessWidget {
  final String title, seeAll;

  HomeViewAllWidget(this.title, {this.seeAll = 'See All'});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: AppFont.XX_LARGE),
          ),
          Text(
            seeAll,
            style: TextStyle(color: AppColor.themeColor, fontSize: AppFont.MEDIUM),
          )
        ],
      ),
    );
  }
}
