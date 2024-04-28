import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class ComponentsCourses extends StatelessWidget {
  final String pathImage;
  final String starDate;
  final String course;
  final String description;

  const ComponentsCourses({
    super.key,
    required this.pathImage,
    required this.starDate,
    required this.course,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.yellow,
          width: 145.81,
          height: 130,
        ),
        Column(
          children: [
            Text(course, style: SincofarmaTheme.titleStyle,)
          ],
        )
      ],
    );
  }
}
