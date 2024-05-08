
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/aboutSincofarma/about_sincofarma_page.dart';
import 'package:sincofarma/src/modules/aboutSincofarma/notifications/notification_page.dart';

class SincofarmaModule extends FlutterGetItModule {
  @override
 
  String get moduleRouteName => '/sincofarma';

  @override
  
  Map<String, WidgetBuilder> get pages => {
    '/about-sincofarma-page':(context) => const AboutSincofarmaPage(),
    '/notification-page':(context) => const NotificationPage()
  };
  
}