import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:untitled3/modal/modal.dart';

class LandingPageController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 2);
    super.onInit();
  }
}

class CarPageController extends GetxController {
  final car = ''.obs;


}

class BikePageController extends GetxController {
  final bike = ''.obs;


}

class Drawercontroller extends GetxController {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {

    scaffoldKey.currentState!.openDrawer();

  }

  void closeDrawer() {

    scaffoldKey.currentState!.openEndDrawer();

  }

}
