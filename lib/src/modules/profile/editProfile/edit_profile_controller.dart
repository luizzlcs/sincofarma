import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:signals_flutter/signals_flutter.dart';

class EditProfileController {
  final imagePicker = ImagePicker();
  final Signal<File?> _imageFile = signal<File?>(null);

  Signal<File?> get imageFile => _imageFile;
  

  

  void pick(ImageSource source) async {
    final pickedFile = await imagePicker.pickImage(source: source);
    if (pickedFile != null) {
      _imageFile.value = File(pickedFile.path);
    }
  }


}
