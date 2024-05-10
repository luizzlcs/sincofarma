import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/profile/certificates/certificates_controller.dart';

import 'certificate_card_widget.dart';

class CertificateListViewWidget extends StatefulWidget {
  const CertificateListViewWidget({super.key});

  @override
  State<CertificateListViewWidget> createState() =>
      _CertificateListViewWidgetState();
}

class _CertificateListViewWidgetState extends State<CertificateListViewWidget> {
  final controller = Injector.get<CertificatesController>();

  @override
  void initState() {
    controller.allCertificate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 2),
      children: controller.controller.data
          .map((e) => Padding(
                padding: const EdgeInsets.only(left: 16, right: 22, top: 11),
                child: CertificateCardWidget(
                  course: e.course,
                  completionData: e.startDate,
                  image: e.imagePath,
                ),
              ))
          .toList(),
    );
  }
}
