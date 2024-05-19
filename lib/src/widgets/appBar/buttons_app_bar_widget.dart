import 'package:flutter/material.dart';
import '../../constants/app_images.dart';

class ButtonsAppBarWidget extends StatelessWidget {
  const ButtonsAppBarWidget({
    super.key,
    this.isVisibleNotification = true,
    this.isVisibleProfile = true,
  });
  final bool isVisibleNotification;
  final bool isVisibleProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: isVisibleNotification,
            child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/sincofarma/notification-page');
              },
              icon: Image.asset(
                AppImages.notification,
                
              ),
            ),
          ),
          Visibility(
            visible: isVisibleProfile,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/profile/profile-page');
              },
              icon: Image.asset(
                AppImages.peopleName,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
