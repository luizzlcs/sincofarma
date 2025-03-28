import 'package:flutter/material.dart';
import '../../../widgets/in_construction_widget.dart';

class BecomeAssociatePage extends StatelessWidget {
  const BecomeAssociatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Torne-se um associado'),
      ),
      body: const Center(
        child: InConstructionWidget(),
      ),
    );
  }
}
