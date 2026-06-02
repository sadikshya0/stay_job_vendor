import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';

class ScheduleDetails extends StatelessWidget {
  const ScheduleDetails({super.key});

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
          "Event Details",
          style: CustomTextStyles.f18W600(color: AppColors.primaryColor),
        ),
        toolbarHeight: 100,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: AppColors.lGrey,
                    border: Border.all(color: AppColors.primaryColor),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(ImagePath.person),
                ),
                Text(
                  "Sarah Jenkins",
                  style: CustomTextStyles.f20W600(color: AppColors.textColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: AppColors.secondaryTextColor,
                      size: 12,
                    ),
                    Text(
                      "sarah.j@gmail.com",
                      style: CustomTextStyles.f10W600(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 175,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.lGrey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EVENT INFORMATION",
                          style: CustomTextStyles.f14W600(
                            color: AppColors.secondaryTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 4,
                                    blurRadius: 1.5,
                                    color: AppColors.lGrey,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.check_circle,
                                color: AppColors.green.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "New Booking Confirmed",
                                    style: CustomTextStyles.f12W600(
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                  Text(
                                    "Booking",
                                    style: CustomTextStyles.f10W600(
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "Room",
                                  style: CustomTextStyles.f14W400(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: AppColors.secondaryTextColor,
                                  size: 14,
                                ),
                                Text(
                                  "Today, Mar 1",
                                  style: CustomTextStyles.f10W600(
                                    color: AppColors.secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: AppColors.secondaryTextColor,
                                  size: 14,
                                ),
                                Text(
                                  "10:00 AM",
                                  style: CustomTextStyles.f10W600(
                                    color: AppColors.secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(thickness: 1),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: AppColors.secondaryTextColor,
                            ),
                            Text(
                              "Modern Loft Downtown",
                              style: CustomTextStyles.f14W600(
                                color: AppColors.secondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Divider(thickness: 1),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 45,
                        width: 130,
                        decoration: BoxDecoration(
                          color: AppColors.lgreen,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.green),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: AppColors.green,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Accept",
                                style: CustomTextStyles.f18W600(
                                  color: AppColors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.cancel_outlined, color: Colors.red),
                              SizedBox(width: 4),
                              Text(
                                "Reject",
                                style: CustomTextStyles.f18W600(
                                  color: Colors.red,
                                ),
                              ),
                            ],
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
    );
  }
}
