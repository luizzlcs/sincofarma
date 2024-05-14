import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/profile/profile_page.dart';

import 'editProfile/edit_profile_controller.dart';

class ProfileRouter extends FlutterGetItModulePageRouter {
  const ProfileRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => EditProfileController()),
      ];

  @override
  WidgetBuilder get view => (_) => const ProfilePage();
}
