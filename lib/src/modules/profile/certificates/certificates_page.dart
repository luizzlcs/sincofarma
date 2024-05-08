import 'package:flutter/material.dart';

import '../../../widgets/in_construction_widget.dart';

class CertificatesPage extends StatelessWidget {

  const CertificatesPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Certificados'),),
           body: const Center(
        child: InConstructionWidget(),
      ),
       );
  }
}