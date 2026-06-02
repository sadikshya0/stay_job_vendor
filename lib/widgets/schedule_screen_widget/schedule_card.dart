import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class ScheduleCard extends StatelessWidget {
  final String title;
  final String category;
  final String time;
  final IconData icon;
  final String customerName;
  final String location;
  final String imagePath;
  final VoidCallback? onAppointmentTap;
  final VoidCallback? onCancelTap;

  const ScheduleCard({
    super.key,
    required this.title,
    required this.category,
    required this.time,
    required this.icon,

    required this.customerName,
    required this.location,
    required this.imagePath,
    this.onAppointmentTap,
    this.onCancelTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.lGrey,
            blurRadius: 2,
            spreadRadius: 1.5,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.lGrey,
                        blurRadius: 2,
                        spreadRadius: 1.5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Icon(icon, color: AppColors.green, size: 20),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: CustomTextStyles.f14W600(
                            color: AppColors.textColor,
                          ),
                        ),
                        Text(
                          category,
                          style: CustomTextStyles.f12W400(
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: 25,
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      time,
                      style: CustomTextStyles.f12W600(color: Colors.amber),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            /// Customer Info
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.lGrey,
                  border: Border.all(
                    color: AppColors.secondaryTextColor.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.primaryColor),
                        ),
                        child: ClipOval(
                          child: Image.asset(imagePath, fit: BoxFit.cover),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              customerName,
                              style: CustomTextStyles.f14W600(
                                color: AppColors.textColor,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.secondaryTextColor,
                                  size: 14,
                                ),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    location,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.f12W600(
                                      color: AppColors.secondaryTextColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            /// Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onAppointmentTap,
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: AppColors.lgreen,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.green),
                    ),
                    child: Center(
                      child: Text(
                        "Appointment",
                        style: CustomTextStyles.f12W600(color: AppColors.green),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: onCancelTap,
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.red),
                    ),
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: CustomTextStyles.f12W600(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
