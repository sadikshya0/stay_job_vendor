import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';
import 'package:stay_job_vendor/view/dashboard/transaction_detail_screen.dart';

class TransactionCard extends StatelessWidget {
  final String name;
  final String status;
  final String description;
  final String date;
  final String amount;
  final Color backgroundColor;
  final Color iconColor;

  final IconData icon;
  final VoidCallback? onTap;

  const TransactionCard({
    super.key,
    required this.name,
    required this.status,
    required this.description,
    required this.date,
    required this.amount,
    required this.backgroundColor,
    required this.iconColor,

    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => TransactionDetailScreen());
      },
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(
            color: AppColors.secondaryTextColor.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3),
              color: AppColors.lGrey,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// LEFT SIDE
              Expanded(
                child: Row(
                  children: [
                    /// ICON BOX
                    Container(
                      height: 30,
                      width: 35,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(icon, color: iconColor, size: 22),
                    ),

                    const SizedBox(width: 10),

                    /// TEXT INFO
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /// NAME + STATUS
                          Row(
                            children: [
                              Text(
                                name,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.f12W400(
                                  color: AppColors.textColor,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: getStatusColor(
                                    status,
                                  ).withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    status,
                                    style: CustomTextStyles.f10W300(
                                      color: getStatusColor(status),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Text(
                            description,
                            style: CustomTextStyles.f12W400(
                              color: AppColors.secondaryTextColor,
                            ),
                          ),

                          Row(
                            children: [
                              Icon(
                                Icons.payment_outlined,
                                color: AppColors.secondaryTextColor,
                                size: 14,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                date,
                                style: CustomTextStyles.f12W400(
                                  color: AppColors.textColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /// RIGHT SIDE
              GestureDetector(
                onTap: onTap,
                child: Row(
                  children: [
                    Text(
                      amount,
                      style: CustomTextStyles.f12W600(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(width: 2),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.black,
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

Color getStatusColor(String status) {
  switch (status.toLowerCase()) {
    case "success":
      return Colors.green;
    case "pending":
      return Colors.orange;
    case "failed":
      return Colors.red;
    default:
      return Colors.grey;
  }
}
