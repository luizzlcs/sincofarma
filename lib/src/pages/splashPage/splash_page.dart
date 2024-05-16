import 'package:flutter/material.dart';
import 'package:sincofarma/src/constants/images_constants.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/custom_app_bar_widget.dart';
Widget preview(){
  return const CustomAppBarWidget();
}
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacementNamed('/auth/login'), //auth/login
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(ImagesConstants.logoCurso)),
    );
  }
}