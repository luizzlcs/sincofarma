import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/search_button.dart';
import 'package:sincofarma/src/widgets/custom_arc.dart';
import '../../../constants/images_constants.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: CustomArc(),
          size: const Size(double.infinity, 210),
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                width: 200,
                height: 70,
                ImagesConstants.logoCursoWhite,
                
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
