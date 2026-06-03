import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';
import 'package:stay_job_vendor/view/dashboard/post_screen.dart';
import 'package:stay_job_vendor/widgets/custom/custom_textfield.dart';
import 'package:stay_job_vendor/widgets/home_screen_widget/property_card.dart';

class ActivityListingScreen extends StatelessWidget {
  const ActivityListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackgroundDark,
      appBar: AppBar(
        backgroundColor: AppColors.onBackgroundDark,
        elevation: 1,
        title: Text(
          "Active Listings",
          style: CustomTextStyles.f16W600(color: AppColors.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  hint: "Search Rooms.....",
                  textInputAction: TextInputAction.search,
                  textInputType: TextInputType.text,
                  preIconPath: Icons.search,
                ),
                SizedBox(height: 30),
                PropertyCard(
                  imagePath: ImagePath.flat,
                  category: "Room",
                  title: "Modern loft Downtown",
                  location: "Masbar-7, Pokhara",
                  price: "NPR 18K/month",
                  expiryDate: "3/29/2026",
                  availableDate: "3/15/2026",
                ),
                SizedBox(height: 30),
                PropertyCard(
                  imagePath: ImagePath.flat,
                  category: "Room",
                  title: "Cozy Studio For Single",
                  location: "Masbar-7, Pokhara",
                  price: "NPR 15K/month",
                  expiryDate: "4/15/2026",
                  availableDate: "4/29/2026",
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(() => PostScreen());
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.add, color: AppColors.whiteColor, size: 30),
        ),
      ),
    );
  }
}
