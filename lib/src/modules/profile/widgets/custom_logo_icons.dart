import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';
import '../../../constants/images_constants.dart';

class CustomLogoIcons extends StatelessWidget {
  const CustomLogoIcons({super.key, this.arrowBack});
  final Widget? arrowBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: IconButton(
            onPressed: () { 
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          'Perfil',
          style: SincofarmaTheme.titleSmallBold.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(ImagesConstants.notification),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
