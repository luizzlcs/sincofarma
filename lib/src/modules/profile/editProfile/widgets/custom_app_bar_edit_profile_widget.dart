import 'package:flutter/material.dart';
import '../../../../widgets/appBar/custom_arc_widget.dart';

class CustomAppBarEditProfileWidget extends StatelessWidget {
  const CustomAppBarEditProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: CustomArcWidget(
            lineTo2Y: 206,
            x1: 212,
            y1: 210,
            x2: 0,
            y2: 206,
          ),
          size: const Size(double.infinity, 150),
          child: const Padding(
            padding: EdgeInsets.only(top: 31),
            child: SizedBox(
              width: double.infinity,
            ),
          ),
        )
      ],
    );
  }
}
