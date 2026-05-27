import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color iconBgColor;
  final Color iconColor;

  const StatCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.iconBgColor = Colors.grey,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 100,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColors.lGrey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.lGrey,
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /// ICON
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(5),
            ),

            child: Icon(icon, size: 14, color: iconColor),
          ),

          /// VALUE
          Text(
            value,
            style: CustomTextStyles.f14W600(color: AppColors.textColor),
          ),

          /// LABEL
          Text(
            label,
            style: CustomTextStyles.f12W600(
              color: AppColors.secondaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
