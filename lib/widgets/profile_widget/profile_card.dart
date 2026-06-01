import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class ProfileCard extends StatelessWidget {
  final IconData leadingIcon;
  final String title;

  final VoidCallback? onTap;

  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final Color? borderColor;

  final double height;

  const ProfileCard({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.onTap,
    this.backgroundColor,
    required this.iconColor,
    this.textColor,
    this.borderColor,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,

      child: Container(
        height: height,
        width: double.infinity,

        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.whiteColor,

          borderRadius: BorderRadius.circular(15),

          border: Border.all(color: borderColor ?? AppColors.lGrey),

          boxShadow: [BoxShadow(color: AppColors.lGrey)],
        ),

        child: Padding(
          padding: const EdgeInsets.all(10),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      leadingIcon,
                      color: iconColor ?? AppColors.primaryColor,
                      size: 20,
                    ),
                  ),

                  const SizedBox(width: 10),

                  Text(
                    title,
                    style: CustomTextStyles.f14W600(
                      color: textColor ?? AppColors.textColor,
                    ),
                  ),
                ],
              ),

              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.amber,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
