import 'package:flutter/material.dart';
import 'package:quical/config/app_images.dart';
import 'package:quical/presentation/onboarding/components/onboad.dart';

class OnBoardingScreen extends StatelessWidget {
  final List<OnbordingData> list = [
    const OnbordingData(
      imagePath: AppImage.onboarding1,
      desc: "Send and receive decentralized payments at any time.",
    ),
    const OnbordingData(
      imagePath: AppImage.onboarding2,
      desc: "Receive money to  your local bank account.",
    ),
    const OnbordingData(
      imagePath: AppImage.onboarding3,
      desc: "Easy to set up. Ready?",
    ),
  ];

  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      list,
      MaterialPageRoute(builder: (context) => OnBoardingScreen()),
    );
  }
}
