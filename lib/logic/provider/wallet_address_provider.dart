import 'package:flutter/material.dart';

class WalletAddressProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController walletController = TextEditingController();
  late PageController _pageController;
  int _selectedIndex = 0;

  PageController? get pageController => _pageController;
  int get selectedIndex => _selectedIndex;

  WalletAddressProvider() {
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
