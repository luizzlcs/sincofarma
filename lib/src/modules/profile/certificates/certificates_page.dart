import 'package:flutter/material.dart';
import '../../../theme/sincofarma_theme.dart';
import '../../home/nextCourses/widgets/custom_app_bar_widget.dart';
import 'widgets.dart/certificates_list_view_widget.dart';

class CertificatesPage extends StatelessWidget {
  const CertificatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: sizeOf.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBarWidget(),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Meus Certificados',
                    style: SincofarmaTheme.titleStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.5),
                  child: SizedBox(
                    height: sizeOf.height * .75,
                    child: const CertificateListViewWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
