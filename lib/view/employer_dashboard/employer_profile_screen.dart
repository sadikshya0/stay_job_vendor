import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/controller/employer_dashboard/employer_profile_controller.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';
import 'package:stay_job_vendor/view/auth/login_screen.dart';
import 'package:stay_job_vendor/view/dashboard/edit_profile_screen.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_about_screen.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_privacy_screen.dart';
import 'package:stay_job_vendor/widgets/profile_widget/profile_card.dart';

class EmployerProfileScreen extends StatelessWidget {
  final EmployerProfileController controller = Get.put(
    EmployerProfileController(),
  );

  EmployerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.onBackgroundDark,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,

        title: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primaryColor, width: 3),
                  ),

                  child: ClipOval(child: Image.asset(ImagePath.person)),
                ),

                Positioned(
                  bottom: -1,
                  right: -1,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.amber, width: 1.5),
                    ),

                    child: const Center(
                      child: Icon(
                        Icons.verified,
                        color: Colors.amber,
                        size: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(width: 12),

            /// USER INFO
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Noah Doe",
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.f16W600(color: AppColors.textColor),
                  ),

                  const SizedBox(height: 4),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),

                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Text(
                      "Employer",
                      style: CustomTextStyles.f12W600(
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// ACTION BUTTONS
            Row(
              children: [
                buildActionIcon(icon: Icons.notifications_none),

                const SizedBox(width: 10),

                buildActionIcon(icon: Icons.dark_mode_outlined),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 16,
            right: 16,
            bottom: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Obx(
                        () => Container(
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                            color: AppColors.lGrey,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryColor,
                              width: 2,
                            ),
                          ),
                          child: ClipOval(
                            child: controller.selectedImage.value != null
                                ? Image.file(
                                    controller.selectedImage.value!,
                                    fit: BoxFit.cover,
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      ImagePath.person,
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 8,
                        child: GestureDetector(
                          onTap: () {
                            Get.bottomSheet(
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                            );
                          },

                          child: InkWell(
                            onTap: () {
                              Get.to(() => EditProfileScreen());
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber,

                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.secondaryTextColor,
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: const Offset(0, 0.5),
                                  ),
                                ],
                              ),

                              child: const Center(
                                child: Icon(
                                  Icons.edit_outlined,
                                  size: 20,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Noah Doe",
                  style: CustomTextStyles.f16W600(color: AppColors.textColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, size: 20, color: Colors.amber),
                    SizedBox(width: 4),
                    Text(
                      "4.8 Vendor Rating",
                      style: CustomTextStyles.f16W600(color: Colors.amber),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CURRENT IDENTITY",
                            style: CustomTextStyles.f12W600(
                              color: AppColors.secondaryTextColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Property Owner",
                                style: CustomTextStyles.f12W600(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Employer",
                                    style: CustomTextStyles.f12W600(
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 140,
                      decoration: BoxDecoration(
                        color: AppColors.lGrey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "142",
                              style: CustomTextStyles.f20W600(
                                color: AppColors.textColor,
                              ),
                            ),
                            Text(
                              "Total Post",
                              style: CustomTextStyles.f18W600(
                                color: AppColors.secondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 140,
                      decoration: BoxDecoration(
                        color: AppColors.lGrey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "1.2k",
                              style: CustomTextStyles.f20W600(
                                color: AppColors.textColor,
                              ),
                            ),
                            Text(
                              "Reviews",
                              style: CustomTextStyles.f18W600(
                                color: AppColors.secondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Get.to(() => EmployerPrivacyScreen());
                  },
                  child: ProfileCard(
                    leadingIcon: Icons.lock,
                    title: "Privacy & Security",
                    iconColor: Colors.amber,
                  ),
                ),

                SizedBox(height: 15),

                InkWell(
                  onTap: () {
                    Get.to(() => EmployerAboutScreen());
                  },
                  child: ProfileCard(
                    leadingIcon: Icons.info,
                    title: "About Us",
                    iconColor: Colors.amber,
                  ),
                ),
                SizedBox(height: 15),

                InkWell(
                  onTap: () {
                    Get.to(() => ());
                  },
                  child: ProfileCard(
                    leadingIcon: Icons.report_off,
                    title: "Report a Problem",
                    iconColor: Colors.amber,
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.offAll(() => LoginScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, size: 20, color: Colors.red),
                      SizedBox(width: 8),
                      Text(
                        "Log Out",
                        style: CustomTextStyles.f16W600(color: Colors.red),
                      ),
                    ],
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

Widget buildActionIcon({required IconData icon}) {
  return Container(
    height: 34,
    width: 34,

    decoration: BoxDecoration(color: AppColors.lGrey, shape: BoxShape.circle),

    child: Icon(icon, color: AppColors.secondaryTextColor, size: 20),
  );
}
