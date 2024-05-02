import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:sincofarma/src/modules/home/nextCourses/componentsNextCourses/components_courses.dart';
import 'package:sincofarma/src/modules/home/nextCourses/next_courses_controller.dart';

class ListViewCourses extends StatefulWidget {
  const ListViewCourses({super.key});

  @override
  State<ListViewCourses> createState() => _ListViewCoursesState();
}

class _ListViewCoursesState extends State<ListViewCourses> {
  final controller = Injector.get<NextCoursesController>();

  @override
  void initState() {
    
    controller.allCourses;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Watch((BuildContext context) {
      return ListView(
        padding: const EdgeInsets.only(bottom: 100),
        children:  controller.filteredCourses.map((course) {
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
    });
  }
}
