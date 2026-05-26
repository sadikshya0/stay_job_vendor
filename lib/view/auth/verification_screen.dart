import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

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
    );
  }
}
