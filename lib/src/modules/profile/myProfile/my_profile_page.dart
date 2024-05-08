import 'package:flutter/material.dart';

import '../../../widgets/in_construction.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
      ),
      body: const Center(
        child: InConstruction(),
      ),
    );
  }
}
