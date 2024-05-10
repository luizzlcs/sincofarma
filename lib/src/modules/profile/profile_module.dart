import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/profile/editProfile/edit_profile_page.dart';
import 'package:sincofarma/src/modules/profile/favorite/favorite_page.dart';
import 'package:sincofarma/src/modules/profile/myCourses/my_courses_page.dart';
import 'package:sincofarma/src/modules/profile/myProfile/my_profile_page.dart';

import '../../model/mock/dummy_data.dart';
import 'becomeAssociate/become_associate_page.dart';
import 'certificates/certificates_router.dart';
import 'profile_router.dart';

class ProfileModule extends FlutterGetItModule {

  @override
  List<Bind<Object>> get bindings => [
    // Bind.lazySingleton((i) => DummyData()),
  ];
  
  @override
  String get moduleRouteName => '/profile';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/profile-page': (_) => const ProfileRouter(),
        '/associate-page':(context) => const BecomeAssociatePage(),
        '/certificates-page':(context) => const CertificatesRouter(),
        '/edite-profile-page':(context) => const EditProfilePage(),
        '/favorite-page':(context) => const FavoritePage(),
        '/my-course-page':(context) => const MyCoursesPage(),
        '/my-profile-page':(context) => const MyProfilePage(),

      };
}
