import 'package:flutter/material.dart';

import '../../../widgets/in_construction_widget.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus cursos'),
      ),
      body: const Center(
        child: InConstructionWidget(),
      ),
    );
  }
}
