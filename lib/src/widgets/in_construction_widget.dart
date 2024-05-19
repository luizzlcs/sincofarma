import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:sincofarma/src/constants/app_images.dart';
class InConstructionWidget extends StatelessWidget {
  const InConstructionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BorderedText(
          strokeWidth: 4,
          strokeColor: Colors.blue.shade600,
          child: const Text(
            'EM DESENVOLVIMENTO',
            style: TextStyle(fontSize: 23, color: Colors.white),
          ),
        ),
        SizedBox(
          child: Image.asset(AppImages.inConstruction),
        ),
      ],
    );
  }
}
