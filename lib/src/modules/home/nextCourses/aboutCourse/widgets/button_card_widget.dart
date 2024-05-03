import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class ButtonCardWidget extends StatelessWidget {
  const ButtonCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const bool isSelected = true;

    return SizedBox(
      width: 120,
      height: 70,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: isSelected == false
              ? SincofarmaTheme.greenColor
              : SincofarmaTheme.blueColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Segunda e Terça',
                style: SincofarmaTheme.subTitleSmalldescricao.copyWith(
                  color: SincofarmaTheme.whiteColor,
                )),
            Text('PRESENCIAL',
                style: SincofarmaTheme.subTitleSmalldescricao.copyWith(
                  color: SincofarmaTheme.whiteColor,
                )),
            Text(
              '26 e 24/04/2024',
              style: SincofarmaTheme.subTitleSmalldescricao.copyWith(
                color: SincofarmaTheme.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
