import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/custom_logo_icons.dart';
import '../../../../widgets/custom_arc_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    return CustomPaint(
      painter: CustomArcWidget(
        lineTo2Y: 130.5,
        x1: 192,
        y1: 180,
        x2: 0,
        y2: 123,
      ),
      size: const Size(double.infinity, 150),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SizedBox(
          width: double.infinity,
          height: 130,
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              children: [
                SizedBox(
                  width: sizeOf.width * 0.93,
                  child: const CustomLogoIcons(
                    isArrowBack: true,
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
