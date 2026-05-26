import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/view/dashboard/chat_screen.dart';
import 'package:stay_job_vendor/view/dashboard/home_screen.dart';
import 'package:stay_job_vendor/view/dashboard/profile_screen.dart';
import 'package:stay_job_vendor/view/dashboard/schedule_screen.dart';
import 'package:stay_job_vendor/view/dashboard/switch_screen.dart';

class DashScreenController extends GetxController {
  final key = GlobalKey<ScaffoldState>();
  RxList<Widget> pages = RxList([
    HomeScreen(),
    ChatScreen(),
    SwitchScreen(),
    ScheduleScreen(),
    ProfileScreen(),
  ]);
  RxInt currentIndex = RxInt(0);
  void changetab(int index) {
    currentIndex.value = index;
  }
}
