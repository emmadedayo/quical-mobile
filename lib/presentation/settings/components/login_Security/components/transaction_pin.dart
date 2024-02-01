import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/settings/components/login_Security/widgets/forget_trans_pin_bottomsheet.dart';
import 'package:quical/presentation/settings/components/login_Security/widgets/transaction_pin_con.dart';
import 'package:quical/router/router.dart';
import 'package:quical/utilities/toggle_switch.dart';

class ManageTransactionPin extends StatefulWidget {
  const ManageTransactionPin({super.key});

  @override
  State<ManageTransactionPin> createState() => _ManageTransactionPinState();
}

class _ManageTransactionPinState extends State<ManageTransactionPin> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
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
          "Manage transaction PIN",
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
          padding: const EdgeInsets.only(left: 18, right: 27),
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Manage transaction PIN",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TransactionPinCon(
                title: 'Change transaction PIN',
                subtitle: "Change your PIN by confirming your current PIN.",
                onTap: () {
                  Navigator.of(context).pushNamed(RoutePaths.transactionPinOtp);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
                icon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 25,
                  color: PsColors.authButtonBgColor,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              TransactionPinCon(
                title: 'Forgot transaction PIN',
                subtitle: "We will send you an OTP if you forgot your PIN.",
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const ForgetTransactionBottomsheet();
                    },
                  );
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
                icon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 25,
                  color: PsColors.authButtonBgColor,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              TransactionPinCon(
                title: 'Enable/disable transaction pin',
                subtitle:
                    "You can disable and enable Transaction PIN\nby simpy tapping on the disable button.",
                onTap: () {},
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
                icon: FlutterSwitch(
                  width: 56.w,
                  height: 26.h,
                  valueFontSize: 10.0,
                  toggleSize: 26.0,
                  activeColor: Colors.green,
                  value: status,
                  borderRadius: 30.0,
                  // padding: 8.0,
                  showOnOff: false,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
