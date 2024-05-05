import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/home/nextCourses/aboutCourse/widgets/select_class_controller.dart';
import 'button_card_widget.dart';

class SelectClassWidget extends StatefulWidget {
  const SelectClassWidget({super.key});

  @override
  State<SelectClassWidget> createState() => _SelectClassWidgetState();
}

class _SelectClassWidgetState extends State<SelectClassWidget> {
    final controller = Injector.get<SelectClassController>();

  @override
  void initState() {
    controller.allClasses;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final listClass = controller.classList;
    final sizeOf = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            width: sizeOf.width,
            height: 120,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 5,
                );
              },
              padding: const EdgeInsets.only(
                left: 5,
                top: 10,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listClass.length,
              itemBuilder: (context, index) {
                final listData = listClass[index];
                return  SizedBox(
                  height: 80,
                  child: ButtonCardWidget(
                    dateCourses:listData.dateCourses,
                    dayClass: listData.dayClass,
                    modalityCourse: listData.modalityCourse,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
