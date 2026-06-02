import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';
import 'package:stay_job_vendor/widgets/schedule_screen_widget/date_card.dart';
import 'package:stay_job_vendor/widgets/schedule_screen_widget/schedule_card.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackgroundDark,
      appBar: AppBar(
        backgroundColor: AppColors.onBackgroundDark,

        title: Text(
          "Schedule",
          style: CustomTextStyles.f16W600(color: AppColors.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 20,
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateCard(day: "Sun", date: "22"),
                  DateCard(day: "Mon", date: "23"),
                  DateCard(day: "Tue", date: "24"),
                  DateCard(day: "Wed", date: "25"),
                  DateCard(day: "Thu", date: "26"),
                  DateCard(day: "Fri", date: "27"),
                  DateCard(day: "Sat", date: "28"),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Pending Approval",
                style: CustomTextStyles.f16W600(color: Colors.amber),
              ),
              SizedBox(height: 20),
              ScheduleCard(
                title: "New Booking Confirmed",
                category: "Booking",
                time: "10:00 am",
                customerName: "Sarah Jenkins",
                location: "Modern Loft DownTown",
                imagePath: ImagePath.person,
                icon: Icons.check_circle,
                onAppointmentTap: () {},
                onCancelTap: () {},
              ),
              SizedBox(height: 30),
              Text(
                "Confirmed Event",
                style: CustomTextStyles.f16W600(color: AppColors.primaryColor),
              ),
              SizedBox(height: 30),
              ScheduleCard(
                title: "Shared Suit Mission",
                category: "Viewing",
                time: "11:15 am",
                customerName: "Sarah Jenkins",
                location: "Lakeside, Pokhara",
                imagePath: ImagePath.person,
                icon: Icons.home_outlined,
                onAppointmentTap: () {},
                onCancelTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
