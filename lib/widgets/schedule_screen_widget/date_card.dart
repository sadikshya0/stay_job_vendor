import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';

class DateCard extends StatelessWidget {
  final String day;
  final String date;
  final Color backgroundColor;
  final Color textColor;

  const DateCard({
    super.key,
    required this.day,
    required this.date,
    this.backgroundColor = AppColors.lGrey,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 45,
      decoration: BoxDecoration(
        color: AppColors.lGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        "$day\n$date",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}
