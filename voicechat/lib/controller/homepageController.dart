import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:voicechat/screen/homePage.dart';
import 'package:voicechat/screen/notes.dart';
import 'package:voicechat/screen/share.dart';
import 'package:voicechat/screen/store.dart';
import 'package:voicechat/screen/video.dart';

class HomePageController extends GetxController {
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;

  Widget currentScreen = HomePage();

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen = const HomePage();
          break;
        }
      case 1:
        {
          currentScreen = const Video();
          break;
        }
      case 2:
        {
          currentScreen = const Share();
          break;
        }
      case 3:
        {
          currentScreen = const Notes();
          break;
        }
      case 4:
        {
          currentScreen = const Stoer();
          break;
        }
    }
    update();
  }
}
