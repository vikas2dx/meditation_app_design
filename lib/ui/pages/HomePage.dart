import 'package:flutter/material.dart';
import 'package:medidation_app/resource/AppStrings.dart';
import 'package:medidation_app/ui/widgets/HomeHeaderWidget.dart';
import 'package:medidation_app/ui/widgets/HomeViewAllWidget.dart';
import 'package:medidation_app/ui/widgets/NewMeditationCardWidegt.dart';
import 'package:medidation_app/ui/widgets/PopularCardWidegt.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
         mainAxisSize: MainAxisSize.min,
        children: [
          HomeHeaderWidget(),
          HomeViewAllWidget(AppStrings.POPULAR),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return PopularCardWidget();
              },
            ),
          ),
          HomeViewAllWidget(AppStrings.NEW),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return NewMeditationCardWidegt();
              },
            ),
          ),

        ],


      ),
    );
  }
}
