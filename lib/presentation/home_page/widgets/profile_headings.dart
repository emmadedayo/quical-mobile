import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class NotificationAndProfileImage extends StatelessWidget {
  const NotificationAndProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 25,
        top: 30,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.settingsScreen);
            },
            child: SvgPicture.asset(
              AppImage.dummyImageSmall,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            AppImage.notificationBellIcon,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
