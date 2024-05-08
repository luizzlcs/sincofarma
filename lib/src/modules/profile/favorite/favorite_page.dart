import 'package:flutter/material.dart';

import '../../../widgets/in_construction_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
      ),
      body: const Center(
        child: InConstructionWidget(),
      ),
    );
  }
}
