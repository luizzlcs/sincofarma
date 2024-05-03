import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/home/nextCourses/aboutCourse/about_course_route.dart';
import 'nextCourses/next_courses_router.dart';

class HomeModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings => [];

  @override
  String get moduleRouteName => '/home';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/next-courses': (_) => const NextCoursesRouter(),
        '/about-course': (context) => const AboutCourseRoute(),
      };
}
