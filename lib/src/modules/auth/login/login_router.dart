import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/auth/login/login_controller.dart';

import 'login_page.dart';

class LoginRouter extends FlutterGetItModulePageRouter {
  const LoginRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
    Bind.lazySingleton((i) =>  LoginController())
  ];

  @override
  WidgetBuilder get view => (BuildContext context) => const LoginPage();
}
