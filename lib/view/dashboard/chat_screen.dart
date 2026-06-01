import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/controller/dashboard/chat_screen_controller.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';
import 'package:stay_job_vendor/view/dashboard/dash_screen.dart';
import 'package:stay_job_vendor/widgets/custom/custom_textfield.dart';
import 'package:stay_job_vendor/widgets/chat_screen_widget/chat_card.dart';

class ChatScreen extends StatelessWidget {
  final chatScreenController controller = Get.put(chatScreenController());
  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: InkWell(
          onTap: () {
            Get.offAll(() => DashScreen());
          },
          child: Icon(Icons.arrow_back, size: 16),
        ),

        title: Text(
          "Messages",
          style: CustomTextStyles.f16W600(color: AppColors.primaryColor),
        ),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        shadowColor: AppColors.lGrey,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomTextField(
                hint: "Search message..",
                preIconPath: Icons.search,
                textInputAction: TextInputAction.search,
                textInputType: TextInputType.text,
              ),

              const SizedBox(height: 20),

              Expanded(
                child: ListView(
                  children: [
                    ChatCard(
                      image: ImagePath.person,
                      companyName: "Sarah Jenkins",
                      message: "Lorem ipsum dolor sit amet consectetur.",
                      time: "5 hour ago",
                    ),

                    SizedBox(height: 20),

                    ChatCard(
                      image: ImagePath.person,
                      companyName: "Anju.p",
                      message: "Lorem ipsum dolor sit amet consectetur.",
                      time: "1 hour ago",
                      isRead: true,
                    ),
                    SizedBox(height: 20),

                    ChatCard(
                      image: ImagePath.person,
                      companyName: "Alice Wong",
                      message: "Lorem ipsum dolor sit amet consectetur.",
                      time: "1 hour ago",
                      isRead: true,
                    ),

                    SizedBox(height: 20),

                    ChatCard(
                      image: ImagePath.person,
                      companyName: "Michel Chen",
                      message: "Lorem ipsum dolor sit amet consectetur.",
                      time: "5 hour ago",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
