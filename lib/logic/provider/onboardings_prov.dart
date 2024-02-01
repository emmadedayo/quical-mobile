import 'package:flutter/material.dart';
import 'package:quical/presentation/onboarding/components/onboarding_data.dart';

class OnboardingProvider extends ChangeNotifier {
  List<OnbordingData>? onbordingDataList;
  MaterialPageRoute? pageRoute;
  final PageController controller =  PageController();
  int currentPage = 0;
  bool lastPage = false;
  final int totalPages = 3;

  void onPageChanged(int page) {
    currentPage = page;
    if (currentPage == onbordingDataList?.length ) {
      lastPage = true;
    } else {
      lastPage = false;
    }
    notifyListeners();
  }
}
