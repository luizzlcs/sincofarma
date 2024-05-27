import 'package:flutter/material.dart';
import 'package:sincofarma/src/constants/app_images.dart';

import 'menu_strip.dart';
import 'menu_widget.dart';

Widget preview(){
  return MyMenuWidget();

}
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
          Divider(
            // height: 100,
            color: Colors.red,
            thickness: 22,
            endIndent: 10,
            indent: 10,
          ),
          MenuWidget(
            icon: AppImages.profile,
            label: 'Meu Perfil',
            router: '/profile/my-profile-page',
          ),
          MenuWidget(
            icon: AppImages.student,
            label: 'Meus Cursos',
            router: '/profile/my-course-page',
          ),
          MenuStrip(
            label: 'Minhas informações',
          ),
          MenuWidget(
            icon: AppImages.heart,
            label: 'Favoritos',
            router: '/profile/favorite-page',
          ),
          MenuWidget(
            icon: AppImages.download,
            label: 'Certificados',
            router: '/profile/certificates-page',
          ),
          MenuStrip(
            label: 'Preferências',
          ),
          MenuWidget(
            icon: AppImages.info,
            label: 'Sobre o Sincofarma',
            router: '/sincofarma/about-sincofarma-page',
          ),
          MenuWidget(
            icon: AppImages.userProfile,
            label: 'Torne-se associado',
            router: '/profile/associate-page',
          ),
        ],
      ),
    );
  }
}
