
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'about_course_page.dart';

class AboutCourseRoute extends FlutterGetItModulePageRouter {
  const AboutCourseRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [];
  
  @override
  WidgetBuilder get view => ((context) => const AboutCoursePage());
  
}