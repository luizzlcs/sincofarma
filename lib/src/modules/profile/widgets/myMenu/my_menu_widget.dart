import 'package:flutter/material.dart';
import 'package:sincofarma/src/constants/images_constants.dart';

import 'menu_strip.dart';
import 'menu_widget.dart';

class MyMenuWidget extends StatelessWidget {
  const MyMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          MenuStrip(
            label: 'Meu menu',
          ),
          MenuWidget(
            icon: ImagesConstants.profile,
            label: 'Meu Perfil',
          ),
          MenuWidget(
            icon: ImagesConstants.student,
            label: 'Meu Cursos',
          ),
          MenuStrip(
            label: 'Minhas informações',
          ),
          MenuWidget(
            icon: ImagesConstants.heart,
            label: 'Favoritos',
          ),
          MenuWidget(
            icon: ImagesConstants.download,
            label: 'Certificados',
          ),
          MenuStrip(
            label: 'Preferências',
          ),
          MenuWidget(
            icon: ImagesConstants.info,
            label: 'Sobre o Sincofarma',
          ),
          MenuWidget(
            icon: ImagesConstants.userProfile,
            label: 'Torne-se associado',
          ),
        ],
      ),
    );
  }
}
