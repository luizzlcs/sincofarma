import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'register_controller.dart';
import 'register_page.dart';

class RegisterRouter extends FlutterGetItModulePageRouter {
  const RegisterRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
    Bind.lazySingleton((i) => RegisterController())
  ];

  @override
  WidgetBuilder get view => (_) => const RegisterPage();
}
