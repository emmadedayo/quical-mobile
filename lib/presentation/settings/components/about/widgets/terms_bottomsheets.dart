import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';

class TermsBottomPopUp extends StatelessWidget {
  const TermsBottomPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 600.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Date filter',
                style: HelperStyle.textStyle(
                  context,
                  PsColors.whiteColor,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              Text(
                'Terms of service',
                style: HelperStyle.textStyle(
                  context,
                  PsColors.passwordCheckBoxTextColor,
                  14.sp,
                  FontWeight.w800,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  AppImage.xcancelIcon,
                  fit: BoxFit.fitWidth,
                  height: 41.h,
                  width: 41.w,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Quical terms of service',
              style: HelperStyle.textStyle(
                context,
                PsColors.authButtonBgColor,
                27.sp,
                FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Last updated: Jul 7, 2023',
              style: HelperStyle.textStyle(
                context,
                PsColors.passwordCheckBoxTextColor,
                14.sp,
                FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Aliquet odio malesuada nunc in. Suscipit at lectus pellentesque eu et nunc felis egestas. Nunc massa purus ipsum feugiat enim mauris dignissim diam. Amet pharetra adipiscing suspendisse ac non. Dolor vestibulum pulvinar vel feugiat faucibus velit integer. Habitant commodo sed ultricies aliquam commodo consequat rhoncus sodales eget. Elementum fames congue sit rhoncus integer sed. Feugiat netus massa ultricies nunc et ac eu suspendisse luctus. Quis amet amet eu etiam sed. Neque vel sed id pharetra ridiculus. Tempus lacus volutpat nec ut scelerisque aliquet eget sagittis. Justo sapien elementum tortor pellentesque cursus. Pellentesque pharetra donec metus facilisi metus sit praesent placerat mauris. Tincidunt rhoncus mattis pretium ornare et feugiat urna. In ultrices duis aliquam dignissim ultricies turpis donec. Velit pellentesque in maecenas ante. Ornare nullam hendrerit tellus neque in mauris massa mi. Congue tellus nascetur nibh odio a et. Tellus nulla hac eget sed aliquet suspendisse felis fringilla est. Interdum cursus dolor nunc posuere nunc nec et. Ante iaculis pellentesque fermentum lectus molestie non id vel. Vitae dignissim augue amet integer. Nec adipiscing ultrices tincidunt amet fringilla urna. Egestas pellentesque fermentum curabitur nibh massa pulvinar eget purus fringilla. Diam odio bibendum placerat nibh sed egestas. Phasellus hac vulputate quis massa leo leo quam ipsum ut. Aliquam lacinia cursus sit lectus. Facilisis lacinia id leo nulla sit a parturient tortor. Orci adipiscing sapien et amet sodales ultricies id.',
            style: HelperStyle.textStyle(
              context,
              PsColors.textfieldHintTextColor,
              14.sp,
              FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
