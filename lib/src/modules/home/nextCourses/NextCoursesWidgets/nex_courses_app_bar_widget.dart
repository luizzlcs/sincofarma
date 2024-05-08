import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/NextCoursesWidgets/search_bar_widget.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/custom_logo_icons.dart';
import '../../../../widgets/custom_arc_widget.dart';

class NextCoursesAppBarWidget extends StatelessWidget {
  const NextCoursesAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    return Stack(
      children: [
        CustomPaint(
          painter: CustomArcWidget(
            lineTo2Y: 180,
            x1: 192,
            y1: 240,
            x2: 0,
            y2: 180,
          ),
          size: const Size(double.infinity, 150),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: double.infinity,
              height: 160,
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    SizedBox(
                      width: sizeOf.width * 0.93,
                      child: const CustomLogoIcons(
                        isArrowBack: false,
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const SearchBarWidget(),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
