import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:quical/config/config.dart';

class CustomLoadingAnimation extends StatelessWidget {
  final double size;

  const CustomLoadingAnimation({
    super.key,
    this.size = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.discreteCircle(
      color: PsColors.whiteColor,
      secondRingColor: PsColors.mainColor,
      thirdRingColor: PsColors.secondaryColor,
      size: size,
    );
  }
}

class LinearProgressLoader extends StatelessWidget {
  final double value;
  final double height;

  const LinearProgressLoader({
    super.key,
    this.value = 2,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Colors.transparent,
      valueColor: AlwaysStoppedAnimation<Color>(PsColors.secondaryColor),
      minHeight: height,
    );
  }
}
