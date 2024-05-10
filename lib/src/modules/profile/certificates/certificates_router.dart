import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:sincofarma/src/modules/profile/certificates/certificates_page.dart';

import 'certificates_controller.dart';

class CertificatesRouter extends FlutterGetItModulePageRouter {
  const CertificatesRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => CertificatesController()),
      ];

  @override
  WidgetBuilder get view => (_) => const CertificatesPage();
}
