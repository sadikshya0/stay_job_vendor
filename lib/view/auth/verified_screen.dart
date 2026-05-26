import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/view/dashboard/dash_screen.dart';

class VerifiedScreen extends StatelessWidget {
  const VerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Account Verification",
            style: CustomTextStyles.f20W600(color: AppColors.primaryColor),
          ),
        ),
        elevation: 4,
        backgroundColor: AppColors.whiteColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 126,
                width: 113,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.verified_user, color: Colors.amber, size: 80),
              ),
              SizedBox(height: 5),

              Text(
                "You're Verified",
                style: CustomTextStyles.f16W600(color: AppColors.textColor),
              ),
              SizedBox(height: 10),

              Text(
                "Your account has been successful verified. The trust badge is now active on your profile",
                style: CustomTextStyles.f14W600(
                  color: AppColors.secondaryTextColor,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 80),
              InkWell(
                onTap: () {
                  Get.offAll(() => DashScreen());
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Done",
                      style: CustomTextStyles.f14W600(
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
