import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sincofarma/src/widgets/appBar/custom_app_bar_widget.dart';

import '../widgets/imageProvider/image_provider_widget.dart';
import 'widgets/custom_app_bar_edit_profile_widget.dart';
import 'widgets/editing_form_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({
    super.key,
  });

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
              const CustomAppBarEditProfileWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Column(
                  children: [
                    SizedBox(
                      width: sizeOf.width * 0.93,
                      child: const CustomAppBarWidget(
                        isVisibleNotification: false,
                        isVisibleProfile: false,
                        isArrowBack: true,
                        isVisibleLogo: false,
                        isLabel: true,
                        label: 'Edital Perfil',
                      ),
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
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Center(),
                    ),
                  ],
                ),
              ),
               Padding(
                  padding: const EdgeInsets.only(
                    left: 36,
                    right: 36,
                    top: 20,
                  ),
                  child: Column(
                    children: [
                      const EditingFormWidget(
                        label: 'Nomes',
                        hintText: 'Nome',
                      ),
                      const EditingFormWidget(
                        label: 'E-mail',
                        hintText: 'E-mail',
                      ),
                      const EditingFormWidget(
                        label: 'Telefone',
                        hintText: 'Telefone',
                      ),
                      const EditingFormWidget(
                        label: 'CPF',
                        hintText: 'CPF',
                      ),
                      const EditingFormWidget(
                        label: 'Senha',
                        hintText: ' Senha ',
                      ),
                      SizedBox(
                        width: sizeOf.width * 0.6,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Salvar'),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
