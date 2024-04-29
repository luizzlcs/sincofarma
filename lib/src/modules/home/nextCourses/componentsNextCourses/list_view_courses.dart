import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/home/nextCourses/componentsNextCourses/components_courses.dart';

import '../../../../model/mock/dummy_data.dart';

class ListViewCourses extends StatelessWidget {
  const ListViewCourses({super.key});
  @override
  Widget build(BuildContext context) {
    final dummyData = Injector.get<DummyData>();
    final courseList = dummyData.data.toList();

    return ListView(
      padding: const EdgeInsets.only(bottom: 100),
      children: courseList.map((course) {
        return ListTile(
          dense: true,
          title: ComponentsCourses(
            pathImage: course.imagePath,
            starDate: course.startDate,
            course: course.course,
            description: course.description,
          ),
          onTap: () {
            debugPrint('Clicou no curso de: ${course.course}');
          },
        );
      }).toList(),
    );
  }
}
