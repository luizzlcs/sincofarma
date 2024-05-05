import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class ButtonCardWidget extends StatefulWidget {
  const ButtonCardWidget({
    super.key,
    required this.dayClass,
    required this.modalityCourse,
    required this.dateCourses,
  });

  final String dayClass;
  final String modalityCourse;
  final String dateCourses;

  @override
  State<ButtonCardWidget> createState() => _ButtonCardWidgetState();
}

class _ButtonCardWidgetState extends State<ButtonCardWidget> {
  @override
  void initState() {
    super.initState();
  }

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
            Text(widget.dayClass,
                style: SincofarmaTheme.subTitleSmalldescricao.copyWith(
                  color: SincofarmaTheme.whiteColor,
                )),
            Text(widget.modalityCourse,
                style: SincofarmaTheme.subTitleSmalldescricao.copyWith(
                  color: SincofarmaTheme.whiteColor,
                )),
            Text(
              widget.dateCourses,
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
