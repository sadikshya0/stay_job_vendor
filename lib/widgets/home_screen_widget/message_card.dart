import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class MessageCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String message;
  final String time;

  const MessageCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),

      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(15),

        boxShadow: [
          BoxShadow(
            color: AppColors.lGrey,
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              border: Border.all(color: AppColors.primaryColor, width: 2),
            ),

            child: ClipOval(child: Image.asset(imagePath)),
          ),

          const SizedBox(width: 8),

          /// MESSAGE INFO
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// NAME
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.f12W600(color: AppColors.textColor),
                ),

                /// MESSAGE + TIME
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Expanded(
                      child: Text(
                        message,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.f10W600(
                          color: AppColors.secondaryTextColor,
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Text(
                      time,
                      style: CustomTextStyles.f10W600(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
