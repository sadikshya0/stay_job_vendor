import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stay_job_vendor/utils/colors.dart';

class CustomBottomBar extends StatelessWidget {
  final String svgPath;
  final bool isActive;
  final VoidCallback onTap;

  const CustomBottomBar({
    super.key,
    required this.svgPath,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: isActive ? 42 : 40,
              width: isActive ? 42 : 40,
              child: SvgPicture.asset(
                svgPath,
                color: isActive
                    ? AppColors.primaryColor
                    : AppColors.secondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
