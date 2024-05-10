import 'package:flutter/material.dart';
import '../../../../constants/images_constants.dart';
import '../../../../widgets/appBar/buttons_app_bar_widget.dart';

class CustomLogoIcons extends StatelessWidget {
  const CustomLogoIcons({super.key, this.isArrowBack = false});
  final bool isArrowBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Visibility(
                visible: isArrowBack,
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
              Image.asset(
                width: 140,
                height: 50,
                ImagesConstants.logoCursoWhite,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        const ButtonsAppBarWidget(
          isVisibleNotification: true,
          isVisibleProfile: true,
        )
      ],
    );
  }
}
