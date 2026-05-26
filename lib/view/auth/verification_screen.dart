import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/view/auth/verified_screen.dart';
import 'package:stay_job_vendor/widgets/verification_screen_widget/verification_card.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: Text(
          "Account Verification",
          style: CustomTextStyles.f20W600(color: AppColors.primaryColor),
        ),
        elevation: 4,
        backgroundColor: AppColors.whiteColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 126,
              width: 113,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.verified_user, color: Colors.amber),
            ),
            Text(
              "Verify your identity",
              style: CustomTextStyles.f16W600(color: AppColors.textColor),
            ),
            Text(
              "Verification help us maintain a safe community. Verified Vendors Get a badge and priority listing and placement",
              style: CustomTextStyles.f14W400(color: AppColors.textColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            VerificationCard(
              icon: Icons.file_present,
              title: "Government ID",
              subtitle: "Password or driver's License",
            ),
            SizedBox(height: 30),
            VerificationCard(
              icon: Icons.smartphone,
              title: "Selfie Check",
              subtitle: "Quick Facial Recognition Scan",
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Get.offAll(() => VerifiedScreen());
              },
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.upload_sharp,
                        color: AppColors.whiteColor,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Upload And Verify",
                        style: CustomTextStyles.f14W600(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
