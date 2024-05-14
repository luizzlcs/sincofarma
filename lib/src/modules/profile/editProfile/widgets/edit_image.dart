import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EditImage extends StatelessWidget {
  const EditImage({
    super.key,
    required this.imagePicker,
  });

  final VoidCallback imagePicker;


  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      right: 5,
      child: CircleAvatar(
        backgroundColor: Colors.grey[200],
        child: IconButton(
          onPressed: () {
            imagePicker.call();
          },
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
