import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/custom_logo_icons.dart';
import 'custom_arc_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    this.arrowBack,
  });

  final Widget? arrowBack;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    return Stack(
      children: [
        CustomPaint(
          painter: CustomArcWidget(),
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
                      child: CustomLogoIcons(
                        arrowBack: arrowBack,
                      ),
                    ),
                    const SizedBox(
                      height:13,
                    ),
                    // const SearchButtonWidget(),
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
