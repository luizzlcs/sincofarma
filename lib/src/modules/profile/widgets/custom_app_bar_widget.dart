import 'package:flutter/material.dart';
import '../../../widgets/custom_arc_widget.dart';


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
          painter: CustomArcWidget(
            lineTo2Y: 186,
            x1: 192,
            y1: 255 ,
            x2: 0,
            y2: 187.5,
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
