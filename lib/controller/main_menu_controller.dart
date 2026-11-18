import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:pas_mobile/menu/home.dart';
import 'package:pas_mobile/menu/profile.dart';
import 'package:pas_mobile/menu/feat.dart';

class MainMenuController extends GetxController {

  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [
    Home(),
    Feat(),
    Profile(),
  ];

}