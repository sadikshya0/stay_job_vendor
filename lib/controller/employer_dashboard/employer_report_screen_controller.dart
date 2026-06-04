import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EmployerReportScreenController extends GetxController {
  var imageFile = Rxn<File>();

  final picker = ImagePicker();

  Future<void> pickImage() async {
    final picked = await picker.pickImage(source: ImageSource.gallery);

    if (picked != null) {
      imageFile.value = File(picked.path);
    }
  }
}
