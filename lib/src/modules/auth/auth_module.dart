import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import '../home/nextCourses/next_courses_page.dart';
import 'Register/register_router.dart';
import 'login/login_router.dart';

class AuthModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings => [];

  @override
  String get moduleRouteName => '/auth';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/login': (_) => const LoginRouter(),
        '/register': (_) => const RegisterRouter(),
        '/home':(_) =>  const NextCoursesPage(),
      };
}
