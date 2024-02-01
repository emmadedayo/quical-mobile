import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/convert/convert_screen.dart';
import 'package:quical/presentation/deposit/deposit_screen.dart';
import 'package:quical/presentation/home_page/homepage_screen.dart';
import 'package:quical/presentation/transaction/Transactions_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomePageScreen(),
    DepositScreen(),
    ConvertScreen(),
    TransactionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        selectedIconTheme:
            IconThemeData(color: PsColors.authButtonBgColor, size: 10),
        selectedLabelStyle: HelperStyle.textStyle(
          context,
          PsColors.authButtonBgColor,
          14.sp,
          FontWeight.w400,
        ),
        backgroundColor: PsColors.whiteColor,
        unselectedFontSize: 10,
        selectedItemColor: PsColors.authButtonBgColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: _currentIndex == 0
                  ? SvgPicture.asset(
                      AppImage.selecthome,
                      fit: BoxFit.fitWidth,
                    )
                  : SvgPicture.asset(
                      AppImage.unselectedhome,
                      fit: BoxFit.fitWidth,
                    ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: _currentIndex == 1
                  ? SvgPicture.asset(
                      AppImage.selectdeposit,
                      fit: BoxFit.fitWidth,
                    )
                  : SvgPicture.asset(
                      AppImage.unselectdepossit,
                      fit: BoxFit.fitWidth,
                    ),
            ),
            label: "Deposit",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: _currentIndex == 2
                  ? SvgPicture.asset(
                      AppImage.selectconvert,
                      fit: BoxFit.fitWidth,
                    )
                  : SvgPicture.asset(
                      AppImage.unselectconvert,
                      fit: BoxFit.fitWidth,
                    ),
            ),
            label: "Convert",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: _currentIndex == 3
                  ? SvgPicture.asset(
                      AppImage.selecttransaction,
                      fit: BoxFit.fitWidth,
                    )
                  : SvgPicture.asset(
                      AppImage.unselecttransaction,
                      fit: BoxFit.fitWidth,
                    ),
            ),
            label: "Transaction",
          ),
        ],
      ),
    );
  }
}
