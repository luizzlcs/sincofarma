import 'package:flutter/material.dart';
import 'package:sincofarma/src/constants/app_images.dart';

Widget preview() {
  return Container(
    height: 60,
    width: 250,
    decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(22))),
    child: const Center(
        child: Text(
      'Luiz Carlos',
      style: TextStyle(
        color: Colors.white,
        fontSize: 36,
      ),
    )),
  );
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
        () => Navigator.of(context)
            .pushReplacementNamed('/auth/login'), //auth/login
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(AppImages.logoCurso)),
    );
  }
}
