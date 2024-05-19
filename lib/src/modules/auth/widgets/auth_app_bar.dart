import 'package:flutter/material.dart';
import '../../../constants/app_images.dart';
import '../../../widgets/appBar/custom_arc_widget.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: CustomArcWidget(),
          size: const Size(double.infinity, 210),
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                width: 200,
                height: 70,
                AppImages.logoCursoWhite,
                
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
