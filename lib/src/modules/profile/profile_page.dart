import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/profile/widgets/custom_app_bar_widget.dart';
import 'package:sincofarma/src/modules/profile/widgets/custom_logo_icons.dart';

import '../../theme/sincofarma_theme.dart';
import 'widgets/imageProvider/image_provider_widget.dart';
import 'widgets/myMenu/my_menu_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBarWidget(),
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Column(
              children: [
                SizedBox(
                  width: sizeOf.width * 0.93,
                  child: const CustomLogoIcons(),
                ),
                const SizedBox(
                  height: 24,
                ),
                // const SearchButtonWidget(),
                const Stack(
                  children: [
                    ImageProviderWidget(),
                    EditImage(),
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
                      onPressed: () {},
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
    );
  }
}
