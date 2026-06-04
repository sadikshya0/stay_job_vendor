import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/controller/employer_dashboard/employer_report_screen_controller.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/widgets/profile_widget/issue_tag.dart';

class EmployerReportScreen extends StatelessWidget {
  final controller = Get.put(EmployerReportScreenController());

  EmployerReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackgroundDark,
      appBar: AppBar(
        backgroundColor: AppColors.onBackgroundDark,

        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, color: AppColors.textColor, size: 20),
        ),
        title: Text(
          "Report A Problem",
          style: CustomTextStyles.f18W600(color: AppColors.primaryColor),
        ),
        toolbarHeight: 100,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "!",
                        style: CustomTextStyles.f16W600(color: Colors.amber),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "What's Wrong",
                    style: CustomTextStyles.f16W600(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  IssueTag(title: "Technical Issues"),
                  IssueTag(title: "Billing Problem"),
                  IssueTag(title: "Features Request"),
                  IssueTag(title: "Account Access"),
                  IssueTag(title: "Others"),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.file_present, size: 18, color: Colors.amber),
                  SizedBox(width: 4),
                  Text(
                    "DESCRIPTION",
                    style: CustomTextStyles.f12W600(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Please describe the issues in details",
                    style: CustomTextStyles.f12W600(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.image_outlined, size: 18, color: Colors.amber),
                  SizedBox(width: 4),
                  Text(
                    "ATTACHMENTS(OPTIONAL)",
                    style: CustomTextStyles.f12W600(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              Obx(
                () => DottedBorder(
                  options: RoundedRectDottedBorderOptions(
                    radius: Radius.circular(10),
                    color: AppColors.secondaryTextColor.withOpacity(0.8),
                  ),
                  child: GestureDetector(
                    onTap: controller.pickImage,
                    child: Container(
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.lGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: controller.imageFile.value == null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: AppColors.secondaryTextColor,
                                  size: 50,
                                ),
                                Text(
                                  "UPLOAD SCREENSHOT",
                                  style: CustomTextStyles.f12W600(
                                    color: AppColors.secondaryTextColor,
                                  ),
                                ),
                              ],
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                controller.imageFile.value!,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Sumbit Report",
                      style: CustomTextStyles.f16W600(
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
