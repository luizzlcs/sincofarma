import 'package:flutter/material.dart';

import '../../../../constants/images_constants.dart';

class CustomLogoIcons extends StatelessWidget {
  const CustomLogoIcons({super.key, this.arrowBack});
  final Widget? arrowBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Container(
                child: arrowBack,
              ),
              Image.asset(
                width: 140,
                height: 50,
                ImagesConstants.logoCursoWhite,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(ImagesConstants.notification),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/profile/profile-page');
                },
                icon: Image.asset(
                  ImagesConstants.peopleName,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
