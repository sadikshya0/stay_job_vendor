import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/view/dashboard/dash_screen.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_dash_screen.dart';

void showSwitchIdentityDialog(String currentRole) {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.apartment, size: 70, color: Colors.indigo.shade900),

            SizedBox(height: 12),

            Text(
              "Switch Identity?",
              style: CustomTextStyles.f20W600(color: AppColors.textColor),
            ),

            SizedBox(height: 8),

            Text(
              currentRole == 'employer'
                  ? "Switch to Landlord dashboard?"
                  : "Switch to Employer dashboard?",
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.back();

                  if (currentRole == 'employer') {
                    Get.offAll(() => DashScreen()); // landlord
                  } else {
                    Get.offAll(() => EmployerDashScreen()); // employer
                  }
                },
                child: Text(
                  "Yes, Switch Now",
                  style: CustomTextStyles.f16W600(color: AppColors.whiteColor),
                ),
              ),
            ),

            SizedBox(height: 12),

            OutlinedButton(
              onPressed: () => Get.back(),
              child: Text(
                "Cancel",
                style: CustomTextStyles.f16W600(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
