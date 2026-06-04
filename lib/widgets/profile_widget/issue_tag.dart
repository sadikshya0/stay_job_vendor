import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class IssueTag extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double width;

  const IssueTag({
    super.key,
    required this.title,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = Colors.amber,
    this.height = 30,
    this.width = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: CustomTextStyles.f10W600(color: textColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
