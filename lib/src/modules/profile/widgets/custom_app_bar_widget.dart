import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/profile/widgets/custom_arc_widget.dart';


class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    this.arrowBack,
  });

  final Widget? arrowBack;

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        CustomPaint(
          painter: CustomArcWidget(),
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
