import 'package:flutter/material.dart';
import 'package:quical/router/router.dart';

class CreateAcctTypeProvider with ChangeNotifier {
  int selectedOptionIndexs = 0;

  int get selectedOptionIndex => selectedOptionIndexs;

  void selectOption(int index) {
    selectedOptionIndexs = index;
    notifyListeners();
  }

  void navigateToSelectedScreen(BuildContext context, int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        Navigator.of(context).pushNamed(RoutePaths.choosePasswordScreen);
        break;
      case 1:
        Navigator.of(context).pushNamed(RoutePaths.companyDetailScreen);
        break;
    }
  }
}
