import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sincofarma/src/model/mock/dummy_model.dart';
import '../../../../theme/sincofarma_theme.dart';

class CardCoursesWidget extends StatelessWidget {
  const CardCoursesWidget({
    super.key,
    required this.pathImage,
    required this.starDate,
    required this.course,
    required this.description,
  });

  final String pathImage;
  final String starDate;
  final DummyModel course;
  final String description;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: sizeOf.width * 0.35,
                height: 130,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: pathImage.contains('other')
                      ? Image.network(pathImage, fit: BoxFit.cover)
                      : Image.asset(pathImage, fit: BoxFit.cover),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: sizeOf.width * 0.24,
                height: 31,
                decoration: BoxDecoration(
                  color: SincofarmaTheme.blueColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      starDate,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 10,
                      ),
                    ),
                    const Text(
                      '(Terça)',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 7,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.74),
            child: SizedBox(
              width: sizeOf.width * 0.51,
              height: 145,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    maxLines: 1,
                    course.course,
                    style: const TextStyle(
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        height: 0.8),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.1),
                    child: AutoSizeText(
                      maxLines: 5,
                      description,
                      style: SincofarmaTheme.subTitleDecriptionRoboto.copyWith(
                        overflow: TextOverflow.ellipsis,
                        height: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    alignment: Alignment.topLeft,
                    width: 120,
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed('/home/about-course', arguments: course);
                      },
                      child: const Text(
                        'Saiba mais',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                        ),
                      ),
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
