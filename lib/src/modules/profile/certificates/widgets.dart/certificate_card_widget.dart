import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CertificateCardWidget extends StatelessWidget {
  const CertificateCardWidget({
    super.key,
    required this.course,
    required this.completionData,
    required this.image,
  });

  final String course;
  final String completionData;
  final String image;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ImageFiltered(
              imageFilter: ui.ImageFilter.blur(sigmaX:5, sigmaY:5),
              child: Image.asset(
                image,
                width: sizeOf.width,
                height: 168,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
              width: sizeOf.width,
              height: 168,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    course,
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'Realizado: $completionData',
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 23),
                    child: SizedBox(
                      width: 107,
                      height: 26,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 15)),
                        onPressed: () {},
                        child: const Text('Baixar'),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
