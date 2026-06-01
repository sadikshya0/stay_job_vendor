import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_job_vendor/view/employer_dashboard/employer_dash_screen.dart';

void showSwitchIdentityDialog() {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// ICON
            Icon(Icons.apartment, size: 70, color: Colors.indigo.shade900),

            const SizedBox(height: 12),

            /// TITLE
            const Text(
              "Switch Identity?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),

            const SizedBox(height: 8),

            /// MESSAGE
            const Text(
              "Are sure you want to switch to Landlord dashboard ?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 24),

            /// SWITCH BUTTON
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.offAll(() => EmployerDashScreen());
                },
                child: const Text(
                  "Yes, Switch Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            /// CANCEL BUTTON
            SizedBox(
              width: double.infinity,
              height: 45,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey.shade400),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
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
