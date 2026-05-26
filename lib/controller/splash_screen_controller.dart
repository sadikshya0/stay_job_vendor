import 'package:get/get.dart';
import 'package:stay_job_vendor/view/auth/login_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Simulate a delay for the splash screen (e.g., 3 seconds)
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => LoginScreen());
    });
  }
}
