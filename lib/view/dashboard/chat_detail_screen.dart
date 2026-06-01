import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/controller/dashboard/chat_screen_controller.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';
import 'package:stay_job_vendor/widgets/custom/custom_textfield.dart';

class ChatDetailScreen extends StatelessWidget {
  ChatDetailScreen({super.key});
  final chatScreenController controller = Get.put(chatScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.onBackgroundDark,

      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                ImagePath.person,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 4),
            Text(
              "Sarah Jenkins",
              style: CustomTextStyles.f16W600(color: AppColors.textColor),
            ),
          ],
        ),
        toolbarHeight: 70,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 45,
                        width: 310,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryTextColor.withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Hi I would like to get more information about this job",
                            style: CustomTextStyles.f12W400(
                              color: AppColors.textColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "1 hour ago",
                        style: CustomTextStyles.f14W400(
                          color: AppColors.secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),

                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Hi Jeremiah ! Sure, Would you like to schedule interview for the job?",
                        style: CustomTextStyles.f12W400(
                          color: AppColors.whiteColor,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 12,
          top: 10,
        ),

        child: CustomTextField(
          hint: "Type Message...",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.text,
          suffixIconPath: Icons.send,
        ),
      ),
    );
  }
}
