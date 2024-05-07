import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ImageProviderWidget extends StatelessWidget {
  const ImageProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePicker = ImagePicker();
    File? imageFile;
    return CircleAvatar(
      radius: 75,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 65,
        backgroundColor: Colors.grey[300],
        backgroundImage: imageFile != null ? FileImage(imageFile) : null,
      ),
    );
  }
}

class EditImage extends StatelessWidget {
  const EditImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      right: 5,
      child: CircleAvatar(
        backgroundColor: Colors.grey[200],
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            PhosphorIcons.pencilSimpleLine(
              PhosphorIconsStyle.regular,
            ),
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
