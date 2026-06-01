import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/controller/employer_dashboard/employer_dash_screen_controller.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/image_path.dart';
import 'package:stay_job_vendor/widgets/custom/custom_bottom_bar.dart';
import 'package:stay_job_vendor/widgets/custom/switch_identity_dialog.dart';

class EmployerDashScreen extends StatelessWidget {
  final c = Get.put(EmployerDashScreenController());
  EmployerDashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Obx(() => c.pages[c.currentIndex.value]),

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 18,
            top: 12,
          ),

          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.lGrey.withOpacity(0.4),
                blurRadius: 2,
                spreadRadius: 1.5,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(
                    () => CustomBottomBar(
                      svgPath: ImagePath.home,
                      isActive: c.currentIndex.value == 0,
                      onTap: () => c.currentIndex.value = 0,
                    ),
                  ),
                  Obx(
                    () => CustomBottomBar(
                      svgPath: ImagePath.chat,

                      isActive: c.currentIndex.value == 1,
                      onTap: () => c.currentIndex.value = 1,
                    ),
                  ),
                  CustomBottomBar(
                    svgPath: ImagePath.switched,
                    isActive: false,
                    onTap: () {
                      showSwitchIdentityDialog();
                    },
                  ),

                  Obx(
                    () => CustomBottomBar(
                      svgPath: ImagePath.profile,
                      isActive: c.currentIndex.value == 3,
                      onTap: () => c.currentIndex.value = 3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
