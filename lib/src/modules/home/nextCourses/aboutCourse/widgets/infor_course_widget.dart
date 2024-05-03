import 'package:flutter/material.dart';
import 'package:sincofarma/src/constants/images_constants.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class InforCourseWidget extends StatelessWidget {
  const InforCourseWidget({super.key});

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
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'VACINAÇÃO',
            style: TextStyle(
              color: SincofarmaTheme.blueColor,
              fontFamily: 'Inter',
              fontSize: 35,
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
