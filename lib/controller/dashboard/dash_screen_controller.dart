import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashScreenController extends GetxController {
  final key = GlobalKey<ScaffoldState>();
  RxList<Widget> pages = RxList([]);
  RxInt currentIndex = RxInt(0);
  void changetab(int index) {
    currentIndex.value = index;
  }
}
