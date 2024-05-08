import 'package:flutter/material.dart';

import '../../../widgets/in_construction_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuração de notificações'),
      ),
      body: const Center(child: InConstructionWidget()),
    );
  }
}
