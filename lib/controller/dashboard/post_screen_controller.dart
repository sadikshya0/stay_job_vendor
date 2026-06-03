import 'package:get/get.dart';

class PostScreenController extends GetxController {
  var selectedType = ''.obs;

  List<String> types = ["House", "Flat", "Single Room"];
  var selectedDate = DateTime.now().obs;
  var selectedNumber = 0.obs;
}
