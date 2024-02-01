import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class ServicesListView extends StatelessWidget {
  const ServicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        // Your items in the horizontal ListView
        MyListItem(
          'Send money',
          SvgPicture.asset(
            AppImage.sendMoneyIcon,
            fit: BoxFit.fitWidth,
          ),
          onTap: () {
             Navigator.of(context).pushNamed(RoutePaths.sendMoneyScreen);
          },
        ),
        MyListItem(
          'Convert',
          SvgPicture.asset(
            AppImage.convertMoneyIcon2,
            fit: BoxFit.fitWidth,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(RoutePaths.convertScreen);
          },
        ),
        MyListItem(
          'Invoice',
          SvgPicture.asset(
            AppImage.invoiceIcon,
            fit: BoxFit.fitWidth,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(RoutePaths.invoiceScreen);
          },
        ),
        // Add more items as needed
      ],
    );
  }
}

class MyListItem extends StatelessWidget {
  final String text;
  final Widget image;
  final VoidCallback onTap;

  const MyListItem(this.text, this.image, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.only(right: 31),
            width: 113.w,
            height: 113.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: PsColors.authButtonBgColor,
            ),
            child: Center(
              child: image,
            ),
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          text,
          style: HelperStyle.textStyle(
            context,
            PsColors.convertCurrencyTextColor,
            14.sp,
            FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
