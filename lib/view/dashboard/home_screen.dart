import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';
import 'package:stay_job_vendor/view/dashboard/activity_listing_screen.dart';
import 'package:stay_job_vendor/widgets/home_screen_widget/flat_card.dart';
import 'package:stay_job_vendor/widgets/home_screen_widget/message_card.dart';
import 'package:stay_job_vendor/widgets/home_screen_widget/stat_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                      "Landlord",
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
                          Icons.home_outlined,
                          color: AppColors.whiteColor,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.lGrey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.wallet_outlined,
                                  color: Colors.amber,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Monthly Revenue",
                                  style: CustomTextStyles.f18W600(
                                    color: AppColors.secondaryTextColor,
                                  ),
                                ),
                                Text(
                                  "NPR 12,840.00",
                                  style: CustomTextStyles.f16W600(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 16,
                              width: 20,
                              decoration: BoxDecoration(
                                color: AppColors.green.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_outward,
                                  color: AppColors.green,
                                  size: 14,
                                ),
                              ),
                            ),
                            Text(
                              "+4.7%",
                              style: CustomTextStyles.f16W600(
                                color: AppColors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StatCard(
                      icon: Icons.home_outlined,
                      value: "94%",
                      label: "OCCPANCY",
                      iconColor: AppColors.whiteColor,
                      iconBgColor: AppColors.secondaryColor.withOpacity(0.3),
                    ),
                    StatCard(
                      icon: Icons.navigation_outlined,
                      value: "432",
                      label: "TOTAL VIEWS",
                      iconColor: AppColors.green,
                      iconBgColor: AppColors.green.withOpacity(0.3),
                    ),
                    StatCard(
                      icon: Icons.arrow_outward_rounded,
                      value: "4",
                      label: "  BOOKING",
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
                      "My Properties",
                      style: CustomTextStyles.f16W600(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => ActivityListingScreen());
                      },
                      child: Container(
                        height: 18,
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Add New",
                            style: CustomTextStyles.f10W600(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                FlatCard(
                  imagePath: ImagePath.flat,
                  title: "Modern loft Downtown",
                  location: "Masbar-7, Pokhara",
                  price: "NPR 18K/month",
                ),
                SizedBox(height: 20),
                FlatCard(
                  imagePath: ImagePath.flat,
                  title: "Shared Suit at Mission",
                  location: " Lakeside-6, Pokhara",
                  price: "NPR 20K/month",
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
      height: 34,
      width: 34,

      decoration: BoxDecoration(color: AppColors.lGrey, shape: BoxShape.circle),

      child: Icon(icon, color: AppColors.secondaryTextColor, size: 20),
    );
  }
}
