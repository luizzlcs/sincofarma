import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/home/nextCourses/aboutCourse/widgets/select_class_controller.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class ButtonCardWidget extends StatefulWidget {
  const ButtonCardWidget({
    super.key,
    required this.dayClass,
    required this.modalityCourse,
    required this.dateCourses,
    required this.index,
    required this.isScheduled,
  });

  final String dayClass;
  final String modalityCourse;
  final String dateCourses;
  final int index;
  final bool isScheduled;

  @override
  State<ButtonCardWidget> createState() => _ButtonCardWidgetState();
}

class _ButtonCardWidgetState extends State<ButtonCardWidget> {
  final controller = Injector.get<SelectClassController>();

 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          final teste = controller.classList
              .map((e) => e.isSelected)
              .toList()[widget.index];
          
          print(teste);
          // ----------------
          setState(() {
            controller.classList[widget.index].isSelected =
                !controller.classList[widget.index].isSelected;
          });
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: widget.isScheduled == false
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
