import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/profile/profile_page.dart';

class ProfileRoute extends FlutterGetItModulePageRouter {
  const ProfileRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [];

  @override
  WidgetBuilder get view => (BuildContext context) => const ProfilePage();
}
