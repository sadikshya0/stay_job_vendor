import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/controller/employer_dashboard/employer_post_screen_controller.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/widgets/custom/custom_textfield.dart';

class EmployerPostScreen extends StatelessWidget {
  final controller = Get.put(EmployerPostScreenController());
  EmployerPostScreen({super.key});

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
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Post Job",
          style: CustomTextStyles.f20W600(color: AppColors.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.lGrey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "JOB TITLE",
                          style: CustomTextStyles.f12W600(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          hint: "Senior React Developer",
                          textInputAction: TextInputAction.search,
                          textInputType: TextInputType.text,
                          preIconPath: Icons.home_outlined,
                        ),
                        SizedBox(height: 10),

                        Row(
                          children: [
                            /// LOCATION
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "LOCATION",
                                    style: CustomTextStyles.f12W600(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  const SizedBox(height: 10),

                                  CustomTextField(
                                    hint: "Masbar-7, Pokhara",
                                    textInputAction: TextInputAction.search,
                                    textInputType: TextInputType.streetAddress,
                                    preIconPath: Icons.location_on_outlined,
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 30),

                            /// TYPE
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "TYPE",
                                    style: CustomTextStyles.f12W600(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  SizedBox(height: 10),

                                  Container(
                                    height: 52,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: AppColors.secondaryTextColor
                                            .withOpacity(0.7),
                                      ),
                                    ),
                                    child: Obx(
                                      () => DropdownButton<String>(
                                        value:
                                            controller
                                                .selectedType
                                                .value
                                                .isEmpty
                                            ? null
                                            : controller.selectedType.value,
                                        hint: const Text("Type"),
                                        isExpanded: true,
                                        underline: const SizedBox(),
                                        items: controller.types
                                            .map<DropdownMenuItem<String>>((
                                              item,
                                            ) {
                                              return DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(item),
                                              );
                                            })
                                            .toList(),
                                        onChanged: (value) {
                                          controller.selectedType.value =
                                              value!;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lGrey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salary Range",
                          style: CustomTextStyles.f14W600(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 5),

                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.lGrey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NPR 50000-100000",
                                  style: CustomTextStyles.f14W400(
                                    color: AppColors.secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Description",
                          style: CustomTextStyles.f14W600(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 5),

                        Container(
                          height: 95,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.lGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "What are the key responsibilities ?",
                                  style: CustomTextStyles.f14W400(
                                    color: AppColors.secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lGrey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Company Logo/Banner",
                          style: CustomTextStyles.f16W400(
                            color: AppColors.secondaryTextColor,
                          ),
                        ),
                        SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            DottedBorder(
                              options: RoundedRectDottedBorderOptions(
                                radius: Radius.circular(10),
                                color: AppColors.lGrey,
                                strokeWidth: 1,
                              ),
                              child: Container(
                                height: 80,
                                width: 80,

                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.camera_alt,
                                      color: AppColors.secondaryTextColor,
                                      size: 30,
                                    ),
                                    Text(
                                      "Upload",
                                      style: CustomTextStyles.f14W400(
                                        color: AppColors.secondaryTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DottedBorder(
                              options: RoundedRectDottedBorderOptions(
                                radius: Radius.circular(10),
                                color: AppColors.lGrey,
                                strokeWidth: 1,
                              ),
                              child: Container(height: 80, width: 80),
                            ),
                            DottedBorder(
                              options: RoundedRectDottedBorderOptions(
                                radius: Radius.circular(10),
                                color: AppColors.lGrey,
                                strokeWidth: 1,
                              ),
                              child: Container(height: 80, width: 80),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      "Publish Now",
                      style: CustomTextStyles.f16W600(color: Colors.amber),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
