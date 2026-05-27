import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class FlatCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String price;
  final VoidCallback? onTap;

  const FlatCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lGrey),
        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// LEFT SIDE
          Row(
            children: [
              /// IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(imagePath, height: 65, width: 85),
              ),

              const SizedBox(width: 10),

              /// TEXT INFO
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// TITLE
                  Text(
                    title,
                    style: CustomTextStyles.f14W600(color: AppColors.textColor),
                  ),

                  const SizedBox(height: 4),

                  /// LOCATION
                  Row(
                    children: [
                      const Icon(
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
                    ],
                  ),

                  const SizedBox(height: 4),

                  /// PRICE
                  Text(
                    price,
                    style: CustomTextStyles.f18W600(color: AppColors.green),
                  ),
                ],
              ),
            ],
          ),

          /// ARROW BUTTON
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: AppColors.lGrey,
                shape: BoxShape.circle,
              ),

              child: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
