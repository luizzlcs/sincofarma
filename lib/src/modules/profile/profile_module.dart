import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'profile_page.dart';

class ProfileModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/profile';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/profile-page': (_) => const ProfilePage(),
      };
}
