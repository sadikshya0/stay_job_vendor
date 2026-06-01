import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class JobCard extends StatelessWidget {
  final String title;
  final String location;
  final String salary;
  final String applicants;
  final String imagePath;
  final VoidCallback? onTap;

  const JobCard({
    super.key,
    required this.title,
    required this.location,
    required this.salary,
    required this.applicants,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.lGrey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                /// IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    height: 65,
                    width: 85,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 10),

                /// DETAILS
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: CustomTextStyles.f14W600(
                        color: AppColors.textColor,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: AppColors.primaryColor,
                        ),

                        const SizedBox(width: 4),

                        Text(
                          location,
                          style: CustomTextStyles.f12W600(
                            color: AppColors.secondaryTextColor,
                          ),
                        ),

                        const SizedBox(width: 8),

                        Container(
                          height: 20,
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              applicants,
                              style: CustomTextStyles.f12W600(
                                color: AppColors.secondaryTextColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),

                    Text(
                      salary,
                      style: CustomTextStyles.f12W600(color: AppColors.green),
                    ),
                  ],
                ),
              ],
            ),

            /// ARROW ICON
            _buildActionIcon(Icons.arrow_forward_ios),
            SizedBox(width: 1),
          ],
        ),
      ),
    );
  }

  Widget _buildActionIcon(IconData icon) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(color: AppColors.lGrey, shape: BoxShape.circle),
      child: Icon(icon, color: AppColors.secondaryTextColor, size: 16),
    );
  }
}
