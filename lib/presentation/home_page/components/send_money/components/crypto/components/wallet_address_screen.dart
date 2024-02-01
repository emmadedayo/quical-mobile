import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quical/config/config.dart';
import 'package:quical/logic/provider/wallet_address_provider.dart';
import 'package:quical/presentation/home_page/components/send_money/components/crypto/components/widgets/internal_transafer.dart';
import 'package:quical/presentation/home_page/components/send_money/components/crypto/components/widgets/wallet_address.dart';

class WalletAddressScreen extends StatelessWidget {
  const WalletAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageControllerProvider = Provider.of<WalletAddressProvider>(context);

    return Scaffold(
      backgroundColor: PsColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PsColors.backgroundColor,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              Icon(
                Icons.keyboard_arrow_left_rounded,
                color: PsColors.backGrayColor,
              ),
              Text(
                "Back",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.backGrayColor,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          "Send Fund",
          style: HelperStyle.textStyle(
            context,
            PsColors.backGrayColor,
            11.sp,
            FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18,
            right: 27,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 21.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      pageControllerProvider.setPage(0);
                    },
                    child: Container(
                      width: 151.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: pageControllerProvider.selectedIndex == 0
                            ? PsColors.authButtonBgColor
                            : PsColors.whiteColor,
                        border: Border.all(
                          width: 1,
                          color: PsColors.authButtonBgColor,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Wallet Address",
                          style: HelperStyle.textStyle(
                            context,
                            pageControllerProvider.selectedIndex == 0
                                ? PsColors.whiteColor
                                : PsColors.authButtonBgColor,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pageControllerProvider.setPage(1);
                    },
                    child: Container(
                      width: 151.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: pageControllerProvider.selectedIndex == 1
                            ? PsColors.authButtonBgColor
                            : PsColors.whiteColor,
                        border: Border.all(
                          width: 1,
                          color: PsColors.authButtonBgColor,
                        ),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomRight: Radius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Internal Transfer",
                          style: HelperStyle.textStyle(
                            context,
                            pageControllerProvider.selectedIndex == 1
                                ? PsColors.whiteColor
                                : PsColors.authButtonBgColor,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 37.h,
              ),
              SizedBox(
                height: 28.h,
              ),
              Expanded(
                flex: 40,
                child: PageView(
                  controller: pageControllerProvider.pageController,
                  onPageChanged: (index) {
                    pageControllerProvider.setPage(index);
                  },
                  children: [
                    WalletAddressPage(),
                    InternalTransferPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
