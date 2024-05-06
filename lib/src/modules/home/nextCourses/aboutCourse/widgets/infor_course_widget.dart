import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sincofarma/src/constants/images_constants.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class InforCourseWidget extends StatelessWidget {
  const InforCourseWidget({super.key, required this.course});

  final String course;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          ImagesConstants.aboutCourse,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
         Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 8, right: 10),
          child: AutoSizeText(
            course.toUpperCase(),
            maxLines: 1,
            style: const TextStyle(
              color: SincofarmaTheme.blueColor,
              fontFamily: 'Inter',
              fontSize: 35,
              height: 0.9,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text.rich(
            TextSpan(
              style: SincofarmaTheme.titleSmallRegular
                  .copyWith(color: SincofarmaTheme.darkGreyColor),
              children: const [
                TextSpan(
                  text: 'Programa de Formação e Habilitação\n',
                ),
                TextSpan(
                  text: 'de Vacinação para Farmacêuticos',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
