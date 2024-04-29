import 'package:flutter/material.dart';

import '../../../../constants/images_constants.dart';
import '../../../../theme/sincofarma_theme.dart';

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
    final sizeOf = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: sizeOf.width * 0.35,
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Image.asset(
              ImagesConstants.vaccination,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.74),
            child: SizedBox(
              width: sizeOf.width * 0.51,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course,
                    style: const TextStyle(
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    description,
                    style: SincofarmaTheme.subTitleDecriptionRoboto.copyWith(
                      overflow: TextOverflow.clip,
                      height: 1.0,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    alignment: Alignment.topLeft,
                    width: 120,
                    height: 20,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 14, fontFamily: 'Roboto')),
                      onPressed: () {},
                      child: const Text('Saiba mais'),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
