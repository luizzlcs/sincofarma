import 'package:flutter/material.dart';

import '../../../widgets/in_construction_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Pefil'),
      ),
      body: const Center(
        child: InConstructionWidget(),
      ),
    );
  }
}
