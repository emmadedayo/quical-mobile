import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 5000), (() {}));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
      return  OnBoardingScreen();
    }),),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: PsColors.backgroundColor,
        body: Center(
      child: Container(
        color: PsColors.whiteColor,
        child: Center(
          child: SvgPicture.asset(
            AppImage.quicalLogo,
            color: PsColors.secondaryColor,
            height: 100,
            width: 70,
          ),
        ),
      ),
    ));
  }
}


