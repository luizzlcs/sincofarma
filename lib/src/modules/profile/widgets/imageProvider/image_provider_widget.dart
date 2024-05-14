import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:sincofarma/src/constants/images_constants.dart';
import 'package:sincofarma/src/modules/profile/editProfile/edit_profile_controller.dart';

class ImageProviderWidget extends StatelessWidget {
  const ImageProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final imagePicker = ImagePicker();
    final controller = Injector.get<EditProfileController>();
    // File? imageFile;
    return Watch((context) => CircleAvatar(
          radius: 75,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey[300],
            backgroundImage: controller.imageFile.value != null
                ? FileImage(controller.imageFile.value!)
                : null,
          ),
        ));
  }
}
