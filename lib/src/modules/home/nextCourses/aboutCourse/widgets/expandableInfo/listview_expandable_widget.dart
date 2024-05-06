import 'package:flutter/material.dart';
import 'package:sincofarma/src/model/mock/info_expandable_dummy.dart';
import 'package:sincofarma/src/modules/home/nextCourses/aboutCourse/widgets/expandableInfo/expandable_widget.dart';

class ListviewExpandableWidget extends StatelessWidget {
  const ListviewExpandableWidget({super.key});
  final dummyData = InfoExpandableDummy.dummyInfo;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return ExpandableWidget(
          info: dummyData[index],
          index: index,
        );
      },
    );
  }
}
