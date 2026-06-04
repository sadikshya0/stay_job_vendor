import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/widgets/custom/custom_textfield.dart';
import 'package:stay_job_vendor/widgets/profile_widget/transaction_card.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

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
          "Transactions",
          style: CustomTextStyles.f18W600(color: AppColors.primaryColor),
        ),
        toolbarHeight: 100,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  hint: "Search transcations....",
                  textInputAction: TextInputAction.search,
                  textInputType: TextInputType.text,
                  preIconPath: Icons.search,
                ),
                SizedBox(height: 20),
                Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primaryColor,
                        Color.fromARGB(255, 83, 75, 65),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 40,
                      top: 20,
                      bottom: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.monetization_on,
                                color: AppColors.whiteColor,
                                size: 22,
                              ),
                            ),
                            SizedBox(width: 30),
                            Column(
                              children: [
                                Text(
                                  "TOTAL EARNINGS",
                                  style: CustomTextStyles.f12W600(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Text(
                                  "NPR 20,000",
                                  style: CustomTextStyles.f12W600(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StatsCard(
                              title: "THIS MONTH",
                              amount: "+NRP 10,00",
                            ),
                            StatsCard(title: "PENDING", amount: "NPR 50,000"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "RECENT ACTIVITY",
                  style: CustomTextStyles.f12W600(
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                SizedBox(height: 20),
                TransactionCard(
                  name: "Alice Wong",
                  status: "Success",
                  description: "Rent Payment- Modern loft",
                  date: "March 10, 2026",
                  amount: "+NPR 24,00",
                  backgroundColor: AppColors.lgreen,
                  icon: Icons.south_west,
                  iconColor: AppColors.green,
                ),
                SizedBox(height: 20),

                TransactionCard(
                  name: "Sarah Jenkins",
                  status: "Success",
                  description: "Security Deposit- Shared flat",
                  date: "March 10, 2026",
                  amount: "+NPR 8,500",
                  backgroundColor: AppColors.lgreen,
                  icon: Icons.south_west,
                  iconColor: AppColors.green,
                ),
                SizedBox(height: 20),
                TransactionCard(
                  name: "Alice Wong",
                  status: "Pending",
                  description: "Rent Payment- Modern loft",
                  date: "March 10, 2026",
                  amount: "+NPR2400",
                  backgroundColor: AppColors.lGrey,
                  icon: Icons.north_east,
                  iconColor: AppColors.secondaryTextColor,
                ),
                SizedBox(height: 20),

                TransactionCard(
                  name: "Michel Chen",
                  status: "Failed",
                  description: "Rent Payment- Modern loft",
                  date: "March 10, 2026",
                  amount: "+NPR 1,800",
                  backgroundColor: AppColors.lGrey,
                  icon: Icons.north_east,
                  iconColor: AppColors.secondaryTextColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatsCard extends StatelessWidget {
  final String title;
  final String amount;
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? amountColor;
  final double height;
  final double width;

  const StatsCard({
    super.key,
    required this.title,
    required this.amount,
    this.backgroundColor,
    this.titleColor,
    this.amountColor,
    this.height = 65,
    this.width = 120,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.lGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: CustomTextStyles.f14W400(
              color: titleColor ?? AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            amount,
            style: CustomTextStyles.f12W600(
              color: amountColor ?? AppColors.secondaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
