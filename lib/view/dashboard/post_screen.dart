import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stay_job_vendor/controller/dashboard/post_screen_controller.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/widgets/custom/custom_textfield.dart';
import 'package:stay_job_vendor/widgets/home_screen_widget/amenity_card.dart';
import 'package:stay_job_vendor/widgets/home_screen_widget/property_info.dart';

class PostScreen extends StatelessWidget {
  final controller = Get.put(PostScreenController());
  PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackgroundDark,
      appBar: AppBar(
        backgroundColor: AppColors.onBackgroundDark,

        leading: InkWell(onTap: () {}, child: Icon(Icons.arrow_back)),
        title: Text(
          "Listing a Room",
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
                          "ROOM TITLE",
                          style: CustomTextStyles.f12W600(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          hint: "Modern Loft Downtown",
                          textInputAction: TextInputAction.search,
                          textInputType: TextInputType.text,
                          preIconPath: Icons.home_outlined,
                        ),
                        SizedBox(height: 10),

                        Text(
                          "LOCATION",
                          style: CustomTextStyles.f12W600(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 10),

                        CustomTextField(
                          hint: "Masbar-7, Pokhara",
                          textInputAction: TextInputAction.search,
                          textInputType: TextInputType.streetAddress,
                          preIconPath: Icons.location_on_outlined,
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
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.lGrey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PropertyInfo(controller: PostScreenController()),
                        SizedBox(height: 20),

                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.lGrey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "PARKING AVAILABLE",
                                  style: CustomTextStyles.f14W600(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.lGrey),
                                    borderRadius: BorderRadius.circular(5),
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
                  height: 160,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Monthly Rent",
                                  style: CustomTextStyles.f14W600(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                SizedBox(height: 5),

                                Container(
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.lGrey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "NPR 000",
                                      style: CustomTextStyles.f12W600(
                                        color: AppColors.secondaryTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Deposit",
                                  style: CustomTextStyles.f14W600(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.lGrey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.verified,
                                        color: AppColors.secondaryTextColor,
                                        size: 16,
                                      ),
                                      Text(
                                        "0.00",
                                        style: CustomTextStyles.f12W600(
                                          color: AppColors.secondaryTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "AMENTIES",
                          style: CustomTextStyles.f14W600(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            AmenityCard(icon: Icons.wifi, title: "WiFi"),
                            SizedBox(width: 10),
                            AmenityCard(
                              icon: Icons.kitchen_rounded,
                              title: "Kitchen",
                            ),
                            SizedBox(width: 10),

                            AmenityCard(icon: Icons.ac_unit, title: "AC"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 110,
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
                          "About",
                          style: CustomTextStyles.f14W600(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur. Arcu nam sapien condimentum aliquam porttitor. Mi lectus nunc massa cras enim.",
                          style: CustomTextStyles.f12W600(
                            color: AppColors.secondaryTextColor,
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
                          "PROPERTY PHOTO",
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
                                      "Add",
                                      style: CustomTextStyles.f12W600(
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
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      "Post Now",
                      style: CustomTextStyles.f16W600(
                        color: AppColors.whiteColor,
                      ),
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
