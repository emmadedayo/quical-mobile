import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quical/logic/provider/acct_limits_provider.dart';
import 'package:quical/logic/provider/create_acct_provider.dart';
import 'package:quical/logic/provider/deposit_provider.dart';
import 'package:quical/logic/provider/manage_account_provider.dart';
import 'package:quical/logic/provider/onboardings_prov.dart';
import 'package:quical/logic/provider/send_money_provider.dart';
import 'package:quical/logic/provider/wallet_address_provider.dart';
import 'package:quical/presentation/splash_screen/splash_screen.dart';
import 'package:quical/router/router_path.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<OnboardingProvider>(
          create: (context) => OnboardingProvider(),
        ),
        ChangeNotifierProvider<CreateAcctTypeProvider>(
          create: (context) => CreateAcctTypeProvider(),
        ),
        ChangeNotifierProvider<SendMoneyProvider>(
          create: (context) => SendMoneyProvider(),
        ),
        ChangeNotifierProvider<WalletAddressProvider>(
          create: (context) => WalletAddressProvider(),
        ),
        ChangeNotifierProvider<AccountLimitsProvider>(
          create: (context) => AccountLimitsProvider(),
        ),
        ChangeNotifierProvider<ManageAccountProvider>(
          create: (context) => ManageAccountProvider(),
        ),
        ChangeNotifierProvider<DepositProvider>(
          create: (context) => DepositProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          title: "state Notifier",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: const SplashScreen(),
          initialRoute: '/',
          onGenerateRoute: router.generateRoute,
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart'; 
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:quical/config/app_images.dart';
// import 'package:quical/config/ps_colors.dart'; 

// void main() { 
// runApp(RunMyApp()); 
// } 

// class RunMyApp extends StatelessWidget { 
// const RunMyApp({super.key}); 

// @override 
// Widget build(BuildContext context) { 
// 	return MaterialApp( 
// 	debugShowCheckedModeBanner: false, 
// 	theme: ThemeData(primarySwatch: Colors.green), 
// 	home: Material( 
// 		child: Center( 
// 		child: SvgPicture.asset( 
// 			AppImage.quicalLogo, 
//       color: PsColors.secondaryColor,
// 			height: 100, 
// 			width: 70, 
// 		), 
// 		), 
// 	), 
// 	); 
// } 
// }