import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/home/nextCourses/next_courses_controller.dart';
import 'package:sincofarma/src/modules/home/nextCourses/next_courses_page.dart';

import '../../../model/mock/dummy_data.dart';

class NextCoursesRouter extends FlutterGetItModulePageRouter {
  const NextCoursesRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => DummyData()),
        Bind.lazySingleton((i) => NextCoursesController()),        
      ];

  @override
  WidgetBuilder get view => (BuildContext context) => const NextCoursesPage();
}
