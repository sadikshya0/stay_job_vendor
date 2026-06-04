import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/utils/image_path.dart';

class TransactionDetailScreen extends StatelessWidget {
  const TransactionDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackgroundDark,
      appBar: AppBar(
        backgroundColor: AppColors.onBackgroundDark,

        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, color: AppColors.textColor, size: 20),
        ),
        title: Text(
          "Transactions Details",
          style: CustomTextStyles.f18W600(color: AppColors.primaryColor),
        ),
        toolbarHeight: 100,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 84, 206, 108),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.check_circle_outline,
                  color: AppColors.whiteColor,
                  size: 60,
                ),
              ),
              Text(
                "NPR 2,400 ",
                style: CustomTextStyles.f16W600(color: AppColors.primaryColor),
              ),
              Text(
                ".Success",
                style: CustomTextStyles.f12W600(color: AppColors.primaryColor),
              ),
              SizedBox(height: 30),
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColors.lGrey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              ImagePath.person,
                              height: 45,
                              width: 45,
                            ),
                          ),
                          SizedBox(width: 4),
                          Column(
                            children: [
                              Text(
                                "Payer",
                                style: CustomTextStyles.f14W600(
                                  color: AppColors.secondaryTextColor,
                                ),
                              ),
                              Text(
                                "Alice Wong",
                                style: CustomTextStyles.f14W600(
                                  color: AppColors.textColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 120),

                          Column(
                            children: [
                              Text(
                                "Date",
                                style: CustomTextStyles.f14W600(
                                  color: AppColors.secondaryTextColor,
                                ),
                              ),
                              Text(
                                "March 10, 2026",
                                style: CustomTextStyles.f14W600(
                                  color: AppColors.textColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 1, color: AppColors.lGrey),
                      SizedBox(height: 5),

                      Text(
                        "Description",
                        style: CustomTextStyles.f14W600(
                          color: AppColors.secondaryTextColor,
                        ),
                      ),

                      Text(
                        "Rent Payment- Modern Loft",
                        style: CustomTextStyles.f14W600(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Method",
                                style: CustomTextStyles.f14W600(
                                  color: AppColors.secondaryTextColor,
                                ),
                              ),

                              Row(
                                children: [
                                  Icon(
                                    Icons.payment,
                                    color: AppColors.primaryColor,
                                    size: 16,
                                  ),
                                  Text(
                                    "CARD",
                                    style: CustomTextStyles.f14W600(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Transaction ID",
                                style: CustomTextStyles.f12W600(
                                  color: AppColors.secondaryTextColor,
                                ),
                              ),

                              Text(
                                "Tx_1",
                                style: CustomTextStyles.f12W600(
                                  color: AppColors.secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.copy, color: AppColors.whiteColor, size: 18),
                        Text(
                          "Copy ID",
                          style: CustomTextStyles.f14W600(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: AppColors.whiteColor,
                          size: 18,
                        ),
                        Text(
                          "Receipt",
                          style: CustomTextStyles.f14W600(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Done",
                    style: CustomTextStyles.f16W600(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
