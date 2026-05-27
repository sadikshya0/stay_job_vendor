import 'package:flutter/material.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class PropertyCard extends StatelessWidget {
  final String imagePath;
  final String category;
  final String title;
  final String location;
  final String price;
  final String expiryDate;
  final String availableDate;

  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final VoidCallback? onOpen;

  const PropertyCard({
    super.key,
    required this.imagePath,
    required this.category,
    required this.title,
    required this.location,
    required this.price,
    required this.expiryDate,
    required this.availableDate,
    this.onEdit,
    this.onDelete,
    this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: AppColors.whiteColor,
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

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// CATEGORY TAG
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),

            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Text(
              category,
              style: CustomTextStyles.f12W600(color: AppColors.textColor),
            ),
          ),

          const SizedBox(height: 12),

          /// IMAGE + DETAILS
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// PROPERTY IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

              /// DETAILS
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// TITLE
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.f16W600(
                        color: AppColors.textColor,
                      ),
                    ),

                    const SizedBox(height: 5),

                    /// LOCATION
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 14,
                          color: AppColors.primaryColor,
                        ),

                        const SizedBox(width: 4),

                        Expanded(
                          child: Text(
                            location,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.f14W600(
                              color: AppColors.secondaryTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    /// FEATURES
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              buildFeature("Flat"),

                              const SizedBox(height: 4),

                              buildFeature("Parking Available"),
                            ],
                          ),
                        ),

                        Expanded(
                          child: Column(
                            children: [
                              buildFeature("2 Rooms"),

                              const SizedBox(height: 4),

                              buildFeature("Available: $availableDate"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          /// EXPIRY DATE
          Row(
            children: [
              const Icon(
                Icons.calendar_month_outlined,
                size: 16,
                color: AppColors.textColor,
              ),

              const SizedBox(width: 6),

              Text(
                "Expires: $expiryDate",
                style: CustomTextStyles.f14W600(color: AppColors.textColor),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Divider(thickness: 1, color: AppColors.lGrey),

          const SizedBox(height: 10),

          /// PRICE + ACTIONS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: CustomTextStyles.f16W600(color: AppColors.green),
              ),

              Row(
                children: [
                  buildActionButton(
                    icon: Icons.edit_note_outlined,
                    color: AppColors.lGrey,
                    iconColor: AppColors.textColor,
                    onTap: onEdit,
                  ),

                  const SizedBox(width: 8),

                  buildActionButton(
                    icon: Icons.delete_outlined,
                    color: AppColors.lGrey,
                    iconColor: AppColors.textColor,
                    onTap: onDelete,
                  ),

                  const SizedBox(width: 8),

                  buildActionButton(
                    icon: Icons.arrow_outward_outlined,
                    color: AppColors.lgreen,
                    iconColor: AppColors.green,
                    onTap: onOpen,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFeature(String text) {
    return Row(
      children: [
        const Icon(Icons.fiber_manual_record, size: 8, color: AppColors.green),

        const SizedBox(width: 5),

        Expanded(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.f12W600(
              color: AppColors.secondaryTextColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildActionButton({
    required IconData icon,
    required Color color,
    required Color iconColor,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        height: 28,
        width: 28,

        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),

        child: Icon(icon, color: iconColor, size: 18),
      ),
    );
  }
}
