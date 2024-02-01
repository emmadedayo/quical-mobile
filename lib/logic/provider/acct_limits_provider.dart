// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AccountLimitsProvider extends ChangeNotifier {
  late PageController _pageController;
  int _selectedIndex = 0;

  PageController? get pageController => _pageController;
  int get selectedIndex => _selectedIndex;

  AccountLimitsProvider() {
    _pageController = PageController();
  }

  void setPage(int index) {
    _selectedIndex = index;
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );

    notifyListeners();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
