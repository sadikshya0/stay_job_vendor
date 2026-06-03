import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/utils/colors.dart';
import 'package:stay_job_vendor/utils/custom_text_styles.dart';

class PropertyInfo extends StatelessWidget {
  final controller;

  PropertyInfo({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "PROPERTY TYPE",
              style: CustomTextStyles.f14W600(color: AppColors.primaryColor),
            ),
            SizedBox(height: 10),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.lGrey),
              ),
              child: Obx(
                () => DropdownButton<String>(
                  value: controller.selectedType.value.isEmpty
                      ? null
                      : controller.selectedType.value,
                  hint: Text("Type"),
                  isExpanded: true,
                  items: controller.types.map<DropdownMenuItem<String>>((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) {
                    controller.selectedType.value = value!;
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "AVAILABLE FROM",
              style: CustomTextStyles.f14W600(color: AppColors.primaryColor),
            ),
            SizedBox(height: 10),
            Obx(
              () => GestureDetector(
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: controller.selectedDate.value,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );

                  if (picked != null) {
                    controller.selectedDate.value = picked;
                  }
                },
                child: Container(
                  height: 45,
                  width: 100,

                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.lGrey),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "${controller.selectedDate.value.toLocal()}".split(
                          ' ',
                        )[0],
                        style: const TextStyle(fontSize: 14),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.calendar_month_outlined,
                        color: AppColors.secondaryTextColor,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        Column(
          children: [
            Text(
              "NUMBER OF ROOM",
              style: CustomTextStyles.f14W600(color: AppColors.primaryColor),
            ),
            SizedBox(height: 10),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.lGrey),
              ),
              child: Obx(
                () => DropdownButton<int>(
                  value: controller.selectedNumber.value == 0
                      ? null
                      : controller.selectedNumber.value,
                  hint: Text("Select Number"),
                  isExpanded: true,
                  underline: SizedBox(),
                  items: List.generate(100, (index) => index + 1).map((number) {
                    return DropdownMenuItem(
                      value: number,
                      child: Text(number.toString()),
                    );
                  }).toList(),
                  onChanged: (value) {
                    controller.selectedNumber.value = value!;
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "AVAILABLE FROM",
              style: CustomTextStyles.f14W600(color: AppColors.primaryColor),
            ),
            SizedBox(height: 10),
            Obx(
              () => GestureDetector(
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: controller.selectedDate.value,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );

                  if (picked != null) {
                    controller.selectedDate.value = picked;
                  }
                },
                child: Container(
                  height: 45,
                  width: 100,

                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.lGrey),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "${controller.selectedDate.value.toLocal()}".split(
                          ' ',
                        )[0],
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.calendar_month_outlined,
                        color: AppColors.secondaryTextColor,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
