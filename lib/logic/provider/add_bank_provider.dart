// // ignore_for_file: use_build_context_synchronously, deprecated_member_use, avoid_print

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:provider/provider.dart';
// import 'package:quical/entity/value_holder_entity.dart';
// import 'package:quical/utilities/utils.dart';
// import '../../entity/add_bank_response.dart';
// import '../../entity/fetch_bank_response.dart';
// import '../../entity/verify_account_response.dart';
// import '../repository/Zylalabs_repo.dart';
// import '../repository/add_bank_repo.dart';
// import '../repository/payStack_repo.dart';

// class AddBankProvider extends ChangeNotifier {
//   AddBankProvider(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }
//   // init method
//   void init() {
//     fetchBanks();
//     getBanks();
//     customDropDownController.addListener(handleTextFieldChange);
//     filteredList = bank;
//   }

//   // dispose method
//   @override
//   void dispose() {
//     customDropDownController.dispose();
//     super.dispose();
//   }

//   // text field controller
//   TextEditingController accountNumberController = TextEditingController();
//   TextEditingController customDropDownController = TextEditingController();
//   TextEditingController amountController = TextEditingController();
//   TextEditingController transationNoteController = TextEditingController();
//   TextEditingController rountingNumberController = TextEditingController();
//   TextEditingController accountNameController = TextEditingController();
//   String bankCode = '';
//   String buttonText = '';

//   // formkeys
//   final GlobalKey<FormState> withDrawFormKey = GlobalKey<FormState>();
//   final GlobalKey<FormState> createAndWithDrawFormKey = GlobalKey<FormState>();
//   final GlobalKey<FormState> addNigeriaBankFormKey = GlobalKey<FormState>();

//   // declearations

//   ValueHolder? psValueHolder;
//   BuildContext context;
//   String? countryCurrencySymbol;
//   bool isDataFetched = false;
//   String? countryName;
//   bool isBankDeleted = false;
//   bool isBankFetched = false;
//   bool isBankVerified = false;
//   int? bankId;
//   int? bankInt;
//   bool isUseDifferentAcc = false;
//   Bank bk = Bank();
//   String accountValue = 'ACH';
//   String accountType = 'Savings';

//   // custom drop down functions

//   bool isTextFieldEmpty = true;
//   bool isKeyboardVisible = false;
//   BankVerificationResponse usBank = BankVerificationResponse();

//   List<PayStackGetBank> filteredList = [];
//   List<String> account = [
//     'ACH',
//     'WIRE',
//   ];

//   void handleTextFieldChange() {
//     isTextFieldEmpty = customDropDownController.text.isEmpty;
//     filterList();
//     notifyListeners();
//   }

//   void filterList() {
//     String query = customDropDownController.text.toLowerCase();

//     filteredList =
//         bank.where((item) => item.name.toLowerCase().contains(query)).toList();
//     notifyListeners();
//   }

//   void onListItemTap(String item, String code) async {
//     customDropDownController.clear();
//     customDropDownController.text = item;
//     bankCode = code;
//     notifyListeners();
//     isTextFieldEmpty = true;
//     filterList();
//     notifyListeners();
//   }

//   List<Bank> bankDetails = <Bank>[];
//   List<PayStackGetBank> bank = <PayStackGetBank>[];
//   AccountVerificationResultResponse accountName =
//       AccountVerificationResultResponse();

// // fetch bank
//   void fetchBanks() async {
//     try {
//       isBankFetched = true;
//       notifyListeners();
//       EasyLoading.show();
//       final apiService = AddBankRepository();
//       final response =
//           await apiService.fetchBank(psValueHolder?.userToken ?? '');
//       if (response.success!) {
//         isBankFetched = false;
//         notifyListeners();
//         bankDetails = response.data!;
//         countryCurrencySymbol =
//             psValueHolder?.countryObject!.countryCurrencySymbol!;
//         countryName = psValueHolder?.countryObject!.countryName;
//         EasyLoading.dismiss();
//         notifyListeners();
//       } else {
//         isBankFetched = false;
//         notifyListeners();
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(context, response.message!);
//         notifyListeners();
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   // create bank
//   void createBank(BuildContext con) async {
//     if (addNigeriaBankFormKey.currentState!.validate()) {
//       addNigeriaBankFormKey.currentState!.save();
//       EasyLoading.show();
//       Map<String, dynamic> data = {
//         "bank_info": {
//           "customer_name": accountName.data!.accountName,
//           "customer_account_number": accountNumberController.text,
//           "customer_bank_id": bankCode,
//           "customer_bank_name": customDropDownController.text,
//           "customer_account_type": "Savings"
//         }
//       };
//       final apiService = AddBankRepository();
//       final response =
//           await apiService.createBank(psValueHolder?.userToken ?? '', data);
//       if (response.success!) {
//         fetchBanks();
//         notifyListeners();
//         Navigator.pop(con);
//          Navigator.pop(con);
//         clear();
//         Utils.displaySuccessMessage(con, response.message!);
//         EasyLoading.dismiss();
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//         notifyListeners();
//       }
//     }
//   }

//   // delete bank
//   void deleteBank(String bankId, BuildContext con) async {
//     EasyLoading.show();
//     isBankDeleted = true;
//     notifyListeners();
//     final apiService = AddBankRepository();
//     final response =
//         await apiService.deleteBank(psValueHolder?.userToken ?? '', bankId);
//     if (response.success!) {
//       fetchBanks();
//       notifyListeners();
//       EasyLoading.dismiss();
//       Navigator.pop(con);
//        Navigator.pop(con);
//       notifyListeners();
//     } else {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, response.message!);
//       notifyListeners();
//     }
//   }

//   //payStack bank function
//   void getBanks() async {
//     final paystackBank = PaystackBank();

//     try {
//       final banks = await paystackBank.getBanks();
//       bank = banks;
//       notifyListeners();
//     } catch (e) {
//       if (kDebugMode) {
//         print('Error: $e');
//       }
//     }
//   }

//   void verifyBank(BuildContext contex) async {
//     if (addNigeriaBankFormKey.currentState!.validate()) {
//       addNigeriaBankFormKey.currentState!.save();
//       isDataFetched = true;
//       notifyListeners();
//       String accountNumber = accountNumberController.text;
//       final response =
//           await PaystackBank().verifyAccount(accountNumber, bankCode);
//       notifyListeners();
//       if (response.status == true) {
//         isDataFetched = false;
//         notifyListeners();
//         accountName = response;
//       } else {
//         Utils.displayErrorMessage(contex, response.message!);
//         isDataFetched = false;
//         notifyListeners();
//       }
//     }
//   }

//   void setBankDetails(int? id, int bankIndex) {
//     bankId = id;
//     bankInt = null;
//     bankInt = bankIndex;
//     notifyListeners();
//   }

//   Map<String, dynamic> get data => {
//         "amount": amountController.text,
//         "bank_id": bankId,
//         "transaction_note": transationNoteController.text,
//       };

//   // withdrawer request
//   void postWithdrawerRquestWithAddedBank(BuildContext con) async {
//     if (withDrawFormKey.currentState!.validate()) {
//       withDrawFormKey.currentState!.save();
//       if (amountController.text.isEmpty) {
//         Utils.displayErrorMessage(con, 'Amount is Required');
//       } else if (bankId == null) {
//         Utils.displayErrorMessage(con, 'Select a Bank');
//       } else {
//         final apiService = AddBankRepository();
//         EasyLoading.show();
//         final response = await apiService.postWithdrawer(
//             psValueHolder?.userToken ?? '', data);
//         if (response.success!) {
//           Provider.of<WalletProvider>(con, listen: false).fetchWallet();
//           notifyListeners();
//           amountController.clear();
//           transationNoteController.clear();
//           bankId = null;
//           bankInt = null;
//           Navigator.pop(con);
//           Utils.displaySuccessMessage(con, response.message!);
//           EasyLoading.dismiss();
//           notifyListeners();
//         } else {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, response.message!);
//           notifyListeners();
//         }
//       }
//     }
//   }

//   void postWithdrawerRquestWithJustCreatedBank(BuildContext con) async {
//     if (createAndWithDrawFormKey.currentState!.validate()) {
//       createAndWithDrawFormKey.currentState!.save();

//       EasyLoading.show();
//       Map<String, dynamic> data = {
//         "bank_info": {
//           "customer_name": accountName.data!.accountName,
//           "customer_account_number": accountNumberController.text,
//           "customer_bank_id": bankCode,
//           "customer_bank_name": customDropDownController.text,
//           "customer_account_type": "Savings"
//         }
//       };
//       final apiService = AddBankRepository();
//       final response =
//           await apiService.createBank(psValueHolder?.userToken ?? '', data);
//       if (response.success!) {
//         fetchBanks();
//         notifyListeners();
//         Navigator.pop(con);
//          Navigator.pop(con);
//         clear();
//         EasyLoading.dismiss();
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//         notifyListeners();
//       }
//     }
//   }

//   void verifyJustCreatedBank(BuildContext contet) async {
//     if (createAndWithDrawFormKey.currentState!.validate()) {
//       createAndWithDrawFormKey.currentState!.save();
//       isDataFetched = true;
//       notifyListeners();
//       String accountNumber = accountNumberController.text;
//       final response =
//           await PaystackBank().verifyAccount(accountNumber, bankCode);
//       notifyListeners();
//       if (response.status == true) {
//         isDataFetched = false;
//         notifyListeners();
//         accountName = response;
//       } else {
//         Utils.displayErrorMessage(contet, response.message!);
//         isDataFetched = false;
//         notifyListeners();
//       }
//     }
//   }

//   //us bank config

//   void verifyBankWithRoutingNumber(BuildContext usBankContext) async {
//     if (createAndWithDrawFormKey.currentState!.validate()) {
//       createAndWithDrawFormKey.currentState!.save();
//       final routingNumber = rountingNumberController.text;
//       try {
//         isBankVerified = true;
//         notifyListeners();
//         final response =
//             await ZelalabsBank().verifyBankWithRoutingNumber(routingNumber);
//         if (response.success!) {
//           isBankVerified = false;
//           notifyListeners();
//           usBank = response;
//           notifyListeners();
//         } else {
//           isBankVerified = false;
//           notifyListeners();
//           Utils.displayErrorMessage(usBankContext, response.message!);
//         }
//       } catch (error) {
//         isBankVerified = false;
//         notifyListeners();
//         Utils.displayErrorMessage(usBankContext, 'Routing Number is Invalid');
//         print('Error: $error');
//       }
//     }
//   }

//   void postUsBankFromWithDrawerRequestScreen(BuildContext con) async {
//     if (createAndWithDrawFormKey.currentState!.validate()) {
//       createAndWithDrawFormKey.currentState!.save();

//       EasyLoading.show();
//       Map<String, dynamic> data = {
//         "bank_info": {
//           "customer_name": accountNameController.text,
//           "customer_account_number": accountNumberController.text,
//           "customer_bank_id": usBank.data?.routingNumber,
//           "customer_bank_name": usBank.data?.bank,
//           "customer_account_type": accountType,
//         }
//       };
//       final apiService = AddBankRepository();
//       final response =
//           await apiService.createBank(psValueHolder?.userToken ?? '', data);
//       if (response.success!) {
//         notifyListeners();
//         fetchBanks();
//         createAndWithDrawFormKey.currentState!.reset();
//         Navigator.pop(con);
//         Navigator.pop(con);
//         clear();
//         EasyLoading.dismiss();
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//         notifyListeners();
//       }
//     }
//   }

//   void clear() {
//     amountController.clear();
//     accountNumberController.clear();
//     customDropDownController.clear();
//     accountName.data?.accountName = null;
//     rountingNumberController.clear();
//     accountNameController.clear();
//     usBank.data?.bank = null;
//     accountType = 'Savings';

//     if (createAndWithDrawFormKey.currentState != null) {
//       createAndWithDrawFormKey.currentState!.reset();
//     }

//     if (withDrawFormKey.currentState != null) {
//       withDrawFormKey.currentState!.reset();
//     }

//     if (addNigeriaBankFormKey.currentState != null) {
//       addNigeriaBankFormKey.currentState!.reset();
//     }

//     notifyListeners();
//   }

//   // function
//   void setUseDifferentAccount() {
//     isUseDifferentAcc = true;
//     notifyListeners();
//   }

//   void resetField() {
//     amountController.clear();
//     transationNoteController.clear();
//     bankId = null;
//     bankInt = null;
//     notifyListeners();
//   }

//   Future<bool> onWillPop(BuildContext context) async {
//     return await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Are you sure?'),
//             content: const Text('Do you want to discard your changes?'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   clear();
//                   notifyListeners();
//                   Navigator.of(context).pop(true);
//                 },
//                 child: const Text('Yes'),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('No'),
//               ),
//             ],
//           ),
//         ) ??
//         false;
//   }

//   Future<bool> onWillPop2(BuildContext context) async {
//     return await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Are you sure?'),
//             content: const Text('Do you want to discard your changes?'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   clear();
//                   Navigator.of(context).pop(true);
//                 },
//                 child: const Text('Yes'),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('No'),
//               ),
//             ],
//           ),
//         ) ??
//         false;
//   }

//   void setAccountValue(String value) {
//     accountValue = value;
//     notifyListeners();
//   }

//   void setAccountType(String value) {
//     accountType = value;
//     notifyListeners();
//   }
//   // check functions

//   String getSubmitButtonLabel() {
//     if (isUseDifferentAcc == true) {
//       return 'Verify Account';
//     } else if (accountName.data?.accountName != null) {
//       return 'Submit';
//     } else {
//       return 'Submit';
//     }
//   }

//   //form validate
//   String? validateNumber(String value) {
//     final RegExp numberRegex = RegExp(r'^\d+(\.\d+)?$');
//     if (!numberRegex.hasMatch(value)) {
//       return 'Please enter a valid number.';
//     }

//     if (value.isEmpty) {
//       return 'Required';
//     }

//     return null;
//   }

//   String? validateText(value) {
//     if (value!.isEmpty) {
//       return 'Required';
//     }
//     return null;
//   }
// }
