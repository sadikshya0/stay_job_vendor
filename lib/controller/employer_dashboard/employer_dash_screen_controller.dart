import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_chat_screen.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_home_screen.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_profile_screen.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_switch_screen.dart';

class EmployerDashScreenController extends GetxController {
  final key = GlobalKey<ScaffoldState>();
  RxList<Widget> pages = RxList([
    EmployerHomeScreen(),
    EmployerChatScreen(),
    EmployerSwitchScreen(),
    EmployerProfileScreen(),
  ]);
  RxInt currentIndex = RxInt(0);
  void changetab(int index) {
    currentIndex.value = index;
  }
}
