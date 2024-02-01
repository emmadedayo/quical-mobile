// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quical/config/config.dart';
import 'package:quical/logic/provider/onboardings_prov.dart';
import 'package:quical/presentation/onboarding/components/onboad.dart';

class IntroScreen extends StatefulWidget {
  final List<OnbordingData> onbordingDataList;
  final MaterialPageRoute pageRoute;
  const IntroScreen(this.onbordingDataList, this.pageRoute);

  void skipPage(BuildContext context) {
    Navigator.push(context, pageRoute);
  }

  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {

  Widget _buildPageIndicator(int page) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height:
          page == context.watch<OnboardingProvider>().currentPage ? 10.0 : 6.0,
      width:
          page == context.watch<OnboardingProvider>().currentPage ? 60.0 : 40.0,
      decoration: BoxDecoration(
        color: page == context.watch<OnboardingProvider>().currentPage
            ? PsColors.indicatorMainColor
            : PsColors.indicatorSubColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PsColors.backgroundColor,
      // padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 55.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPageIndicator(0),
                _buildPageIndicator(1),
                _buildPageIndicator(2),
              ],
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: widget.onbordingDataList,
              controller: context.watch<OnboardingProvider>().controller,
              onPageChanged: context.read<OnboardingProvider>().onPageChanged,
            ),
          ),
        ],
      ),
    );
  }
}
