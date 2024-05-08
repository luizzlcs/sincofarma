import 'package:flutter/material.dart';
import '../constants/images_constants.dart';

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
                ImagesConstants.notification,
                
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
                ImagesConstants.peopleName,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
