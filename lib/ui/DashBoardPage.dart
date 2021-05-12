import 'package:flutter/material.dart';
import 'package:medidation_app/resource/AppColor.dart';
import 'package:medidation_app/resource/AppImages.dart';
import 'package:medidation_app/resource/AppStrings.dart';
import 'package:medidation_app/ui/pages/HomePage.dart';
import 'package:medidation_app/ui/pages/LessonPage.dart';
import 'package:medidation_app/ui/pages/MeditationPage.dart';
import 'package:medidation_app/ui/pages/ProfilePage.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: _page(index),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Image.asset(AppImages.HOME_ACTIVE),
              icon: Image.asset(AppImages.HOME),
              label: AppStrings.HOME),
          BottomNavigationBarItem(
              activeIcon: Image.asset(AppImages.LESSON_ACTIVE),
              icon: Image.asset(AppImages.LESSON),
              label: AppStrings.LESSON),
          BottomNavigationBarItem(
              activeIcon: Image.asset(AppImages.MEDITATION_ACTIVE),
              icon: Image.asset(AppImages.MEDITATION),
              label: AppStrings.MEDITATION),
          BottomNavigationBarItem(
              activeIcon: Image.asset(AppImages.PROFILE_ACTIVE),
              icon: Image.asset(AppImages.PROFILE),
              label: AppStrings.PROFILE)
        ],
      ),
    );
  }

  Widget _page(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return LessonPage();
      case 2:
        return MeditationPage();
      case 3:
        return ProfilePage();
    }

    throw "Invalid index $index";
  }
}
