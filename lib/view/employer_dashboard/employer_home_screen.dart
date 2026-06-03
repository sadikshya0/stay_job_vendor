import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';
import 'package:stay_job_vendor/view/dashboard/activity_listing_screen.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_post_screen.dart';
import 'package:stay_job_vendor/widgets/home_screen_widget/message_card.dart';
import 'package:stay_job_vendor/widgets/home_screen_widget/stat_card.dart';
import 'package:stay_job_vendor/widgets/employer_homescreen_widget/job_card.dart';

class EmployerHomeScreen extends StatelessWidget {
  const EmployerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackgroundDark,

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
            bottom: 30,
          ),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Dashboard Overview",
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.f18W600(
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ),

                              const SizedBox(width: 6),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),

                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.primaryColor,
                                  ),

                                  borderRadius: BorderRadius.circular(6),
                                ),

                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.verified,
                                      color: Colors.amber,
                                      size: 12,
                                    ),

                                    const SizedBox(width: 3),

                                    Text(
                                      "Verified",
                                      style: CustomTextStyles.f10W600(
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Text(
                            "Welcome back, here's your performance",
                            style: CustomTextStyles.f14W400(
                              color: AppColors.secondaryTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 42,
                      width: 42,

                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Center(
                        child: Icon(
                          Icons.dashboard_outlined,
                          color: AppColors.primaryColor,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StatCard(
                      icon: Icons.remove_red_eye_outlined,
                      value: "2.1k",
                      label: "TOTAL VIEWS",
                      iconColor: AppColors.whiteColor,
                      iconBgColor: AppColors.secondaryColor.withOpacity(0.3),
                    ),
                    StatCard(
                      icon: Icons.calendar_month_outlined,
                      value: "8",
                      label: "INTERVIEW",
                      iconColor: Colors.amber,
                      iconBgColor: Colors.amber.withOpacity(0.3),
                    ),
                    StatCard(
                      icon: Icons.people,
                      value: "142",
                      label: "  CANDIDATES",
                      iconColor: AppColors.secondaryColor,
                      iconBgColor: AppColors.secondaryColor.withOpacity(0.5),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RECENT INQURIES",
                      style: CustomTextStyles.f16W600(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "View All",
                          style: CustomTextStyles.f16W600(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                MessageCard(
                  imagePath: ImagePath.person,
                  name: "Sarah. J",
                  message: "Room Inquiry",
                  time: "2h ago",
                ),
                SizedBox(height: 20),
                MessageCard(
                  imagePath: ImagePath.person,
                  name: "Anju. P",
                  message: "Room Inquiry",
                  time: "4h ago",
                ),
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ACTIVITY LISTINGS",
                      style: CustomTextStyles.f16W600(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => EmployerPostScreen());
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            size: 18,
                            color: AppColors.primaryColor,
                          ),
                          Text(
                            "Post Job",
                            style: CustomTextStyles.f16W600(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                JobCard(
                  title: "Senior Frontend Developer",
                  location: "Masbar-7, Pokhara",
                  salary: "NPR 50K/month",
                  applicants: "30 applicants",
                  imagePath: ImagePath.person,
                ),
                SizedBox(height: 20),
                JobCard(
                  title: "Shared Suit at Mission",
                  location: "Lakeside-6, Pokhara",
                  salary: "NPR 20K/month",
                  applicants: "20 applicants",
                  imagePath: ImagePath.person,
                ),
                SizedBox(height: 20),
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.lGrey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "UPCOMING INTERVIEWS",
                                style: CustomTextStyles.f14W600(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              Icon(
                                Icons.calendar_month_outlined,
                                size: 28,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 65,
                            width: 310,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Center(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Mar 25",
                                        style: CustomTextStyles.f12W600(
                                          color: AppColors.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sarah. Jenkins",
                                        style: CustomTextStyles.f14W600(
                                          color: AppColors.textColor,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "10:00 AM . Interview: Senior Frontend Developer",
                                        style: CustomTextStyles.f10W600(
                                          color: AppColors.secondaryTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
        ),
      ),
    );
  }

  Widget buildActionIcon({required IconData icon}) {
    return Container(
      height: 25,
      width: 25,

      decoration: BoxDecoration(color: AppColors.lGrey, shape: BoxShape.circle),

      child: Icon(icon, color: AppColors.secondaryTextColor, size: 20),
    );
  }
}
