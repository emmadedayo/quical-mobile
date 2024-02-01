// // ignore_for_file: use_build_context_synchronously

// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:vendor/logic/repository/wallet_repo.dart';
// import 'package:vendor/utilities/utils.dart';

// import '../../entity/value_holder_entity.dart';
// import '../../entity/wallet_response.dart';

// class WalletProvider extends ChangeNotifier {
//   WalletProvider(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }
//   // init method
//   void init() {
//     fetchWallet();
//   }

//   // dispose method
//   @override
//   void dispose() {
//     //
//     super.dispose();
//   }

//   // declearations

//   ValueHolder? psValueHolder;
//   BuildContext context;
//   String? countryCurrencySymbol = '';
//   bool isLoading = false;

//   WalletData wallet = WalletData();

//   // functions to fetch data
//   void fetchWallet() async {
//     isLoading = true;
//     notifyListeners();
//     EasyLoading.show();
//     final apiService = WalletRepository();
//     isLoading = true;
//     notifyListeners();
//     final response =
//         await apiService.fetchWallet(psValueHolder?.userToken ?? '');
//     if (response.success!) {
//       isLoading = false;
//       notifyListeners();
//       countryCurrencySymbol =
//           psValueHolder?.countryObject!.countryCurrencySymbol!;
//       notifyListeners();
//       wallet = response.data!;
//       EasyLoading.dismiss();
//     } else {
//       isLoading = false;
//       notifyListeners();
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, response.message!);
//     }
//   }

//    // condiional navigation function

//   void checkIfBankListIsEmpty() {
   
//     notifyListeners();
//   }
// }
