import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/auth/auth_module.dart';
import 'package:sincofarma/src/pages/splashPage/splash_page.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

void main() {
  runApp(const Sincofarma());
}

class Sincofarma extends StatelessWidget {
  const Sincofarma({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      pages: [
        FlutterGetItPageBuilder(
          page: (context) => const SplashPage(),
          path: '/',
        ),
      ],
      modules: [
        AuthModule(),
      ],
      builder: (context, routes, flutterGetItNavObserver) {
        return MaterialApp(
          title: 'Flutter Demo',
          navigatorObservers: [flutterGetItNavObserver],
          theme: SincofarmaTheme.lightTheme,
          darkTheme: SincofarmaTheme.darkTheme,
          routes: routes,
        );
      },
    );
  }
}
