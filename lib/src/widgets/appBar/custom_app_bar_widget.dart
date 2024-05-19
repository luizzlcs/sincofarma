import 'package:flutter/material.dart';
import '../../constants/app_images.dart';
import '../../theme/sincofarma_theme.dart';
import 'buttons_app_bar_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget(
      {super.key, required this.isArrowBack,
      required this.isVisibleNotification,
      required this.isVisibleProfile,
      required this.isVisibleLogo,
      required this.isLabel,
      required this.label,
      });

  final bool isArrowBack;
  final bool isVisibleNotification;
  final bool isVisibleProfile;
  final bool isVisibleLogo;
  final bool isLabel;
  final String label;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
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
              
              Visibility(
                visible: isLabel,
                child: SizedBox(
                  width: sizeOf.width * 0.68,
                  child: Center(
                    child: Text(
                      
                      label,
                      style: SincofarmaTheme.titleSmallBold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isVisibleLogo,
                child: Image.asset(
                  width: 140,
                  height: 50,
                  AppImages.logoCursoWhite,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        ButtonsAppBarWidget(
          isVisibleNotification: isVisibleNotification,
          isVisibleProfile: isVisibleProfile,
        )
      ],
    );
  }
}
