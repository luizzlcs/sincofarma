import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sincofarma/src/widgets/appBar/custom_app_bar_widget.dart';
import '../../theme/sincofarma_theme.dart';
import 'widgets/custom_arc_profile_widget.dart';
import 'widgets/imageProvider/image_provider_widget.dart';
import 'widgets/myMenu/my_menu_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    log('Altuara da tela: ${sizeOf.height}');
    return Scaffold(
      body: SizedBox(
        height: sizeOf.height,
        width: sizeOf.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomArcProfileWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Column(
                  children: [
                    SizedBox(
                      width: sizeOf.width * 0.93,
                      child: const CustomAppBarWidget(
                        isVisibleNotification: true,
                        isVisibleProfile: false,
                        isArrowBack: true,
                        isVisibleLogo: false,
                        isLabel: true,
                        label: 'Perfil'
                      ),
                    ),
                    
                    const Stack(
                      children: [
                        ImageProviderWidget(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: SincofarmaTheme.blueColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('/profile/edite-profile-page');
                          },
                          child: const Text(
                            'Editar Perfil',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    const MyMenuWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
