import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/model/mock/class_dummy.dart';
import 'package:sincofarma/src/modules/home/nextCourses/aboutCourse/widgets/select_class_controller.dart';
import 'about_course_page.dart';

class AboutCourseRoute extends FlutterGetItModulePageRouter {
  const AboutCourseRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => SelectClassController()),
        Bind.lazySingleton((i) => ClassesDummy()),
      ];

  @override
  WidgetBuilder get view => ((context) => const AboutCoursePage());
}
