// // ignore_for_file: use_build_context_synchronously, avoid_print, depend_on_referenced_packages, unnecessary_null_comparison

// import 'dart:io';
// import 'dart:math';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:flutter_paystack/flutter_paystack.dart';
// import 'package:provider/provider.dart';
// import 'package:vendor/logic/provider/profile_provider.dart';
// import 'package:vendor/utilities/utils.dart';
// import 'package:intl/intl.dart';
// import '../../entity/country_list_Response.dart';
// import '../../entity/city_list_response.dart';
// import '../../entity/request_a_tab_response.dart';
// import '../../entity/value_holder_entity.dart';
// import '../../entity/state_list_response.dart';
// import 'package:monnify_payment_sdk/monnify_payment_sdk.dart';
// import '../../router/router_constant.dart';
// import '../repository/request_a_tab_repo.dart';
// import 'package:flutter_braintree/flutter_braintree.dart';

// class RequestATabProvider extends ChangeNotifier {
//   RequestATabProvider(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }
//   // init method
//   void init() async {
//     fetchTabs();
//     fetchCountries();

//     monnify = await Monnify.initialize(
//       applicationMode: ApplicationMode.TEST,
//       apiKey: 'MK_TEST_BFU8CT7JVM',
//       contractCode: '1756623907',
//     );
//     await plugin.initialize(publicKey: publicKey);
//     _request = BraintreeDropInRequest(
//       tokenizationKey: 'sandbox_fwqd8tcc_8c5hgfhjnxgvsk5v',
//       collectDeviceData: true,
//       paypalEnabled: true,
//       amount: getAmount(),
//       googlePaymentRequest: BraintreeGooglePaymentRequest(
//         totalPrice: getAmount(),
//         currencyCode: 'USD',
//         billingAddressRequired: false,
//       ),
//     );
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
//   bool isDataFetched = false;
//   String? countryCurrencySymbol = '';
//   List<RequestATab> requestATab = <RequestATab>[];
//   List<Country> country = <Country>[];
//   List<States> state = <States>[];
//   List<City> city = <City>[];
//   int? countryId;
//   String? countryName;
//   int? stateId;
//   String? stateName;
//   int? cityId;
//   String? cityName;
//   double quantity = 1;
//   double amount = 120;
//   double percentage = 7.5;
//   double deliveryFee = 2000;
//   String paymentType = 'PAYSTACK';
//   String usPaymentType = 'PAYPAL';
//   late BraintreeDropInRequest _request;

//   late Monnify? monnify;
//   var publicKey = 'pk_test_f42d38789002b173698cb6aed27865dfdd529289';
//   final plugin = PaystackPlugin();

//   // form key
//   final GlobalKey<FormState> detailsFormKey = GlobalKey<FormState>();

//   // controllers
//   TextEditingController addressController = TextEditingController();

//   // functions to fetch data
//   void fetchTabs() async {
//     EasyLoading.show();
//     isDataFetched = true;
//     notifyListeners();
//     try {
//       final apiService = RequestATabRepository();
//       final response =
//           await apiService.fetchTabs(psValueHolder?.userToken ?? '');
//       if (response.success!) {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         requestATab = response.data!;
//         countryCurrencySymbol =
//             psValueHolder?.countryObject!.countryCurrencySymbol!;
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         Utils.displayErrorMessage(context, response.message!);
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, 'an error occured');
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }

//   // fetch country
//   void fetchCountries() async {
//     EasyLoading.show();
//     isDataFetched = true;
//     notifyListeners();
//     try {
//       final apiService = RequestATabRepository();
//       final response =
//           await apiService.fetchCountries(psValueHolder?.userToken ?? '');
//       if (response.success!) {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         country = response.data!;
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         Utils.displayErrorMessage(context, response.message!);
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, 'an error occured');
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }

//   // fetch city

//   void fetchCities() async {
//     EasyLoading.show();
//     isDataFetched = true;
//     notifyListeners();
//     try {
//       final apiService = RequestATabRepository();
//       final response =
//           await apiService.fetchCites(psValueHolder?.userToken ?? '', stateId!);
//       if (response.success!) {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         city = response.data!;
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         Utils.displayErrorMessage(context, response.message!);
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, 'an error occured');
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }

//   //states
//   void fetchStates() async {
//     EasyLoading.show();
//     isDataFetched = true;
//     notifyListeners();
//     try {
//       final apiService = RequestATabRepository();
//       final response = await apiService.fetchStates(
//           psValueHolder?.userToken ?? '', countryId!);
//       if (response.success!) {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         state = response.data!;
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         Utils.displayErrorMessage(context, response.message!);
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, 'an error occured');
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }

//   //payment method

//   //
//   void goToPaymentPage(BuildContext con) async {
//     if (detailsFormKey.currentState!.validate()) {
//       detailsFormKey.currentState!.save();
//       if (countryName == null) {
//         Utils.displayErrorMessage(con, 'Please Select a Country');
//       } else if (stateName == null) {
//         Utils.displayErrorMessage(con, 'Please Select a State');
//       } else if (cityName == null) {
//         Utils.displayErrorMessage(con, 'Please Select a City');
//       } else {
//         Navigator.of(con).pushNamed(RoutePaths.paymentDetails);
//       }
//     }
//   }

// // normal functions
//   void setCountryName(String value) {
//     countryName = value;
//     notifyListeners();
//   }

//   void setCountryId(int id) {
//     countryId = id;
//     print(id);
//     notifyListeners();
//   }

//   void setStateName(String value) {
//     stateName = value;
//     notifyListeners();
//   }

//   void setStateId(int id) {
//     stateId = id;
//     notifyListeners();
//   }

//   void setCityName(String value) {
//     cityName = value;
//     notifyListeners();
//   }

//   void setCityId(int id) {
//     cityId = id;
//     notifyListeners();
//   }

//   void setPaymentType(String type) {
//     paymentType = type;
//     notifyListeners();
//   }

//   void setUsPaymentType(String type) {
//     usPaymentType = type;
//     notifyListeners();
//   }

//   void increaseQuantity() {
//     if (quantity >= 1) {
//       quantity += 1;
//       notifyListeners();
//     }
//   }

//   void decreaseQuantity() {
//     if (quantity == 1) {
//       quantity = 1;
//       notifyListeners();
//     } else if (quantity > 1) {
//       quantity -= 1;
//       notifyListeners();
//     }
//   }

//   String getAmount() {
//     double subTotal = amount * quantity;
//     double tax = (percentage / 100) * subTotal;
//     double midTotal = subTotal + deliveryFee + tax;
//     double total = midTotal;
//     return total.toInt().toString();
//   }

//   int getAmountInKobo() {
//     double total = double.parse(getAmount());
//     int totalInKobo = (total * 100).toInt();
//     return totalInKobo;
//   }

//   //
//   String _getReference() {
//     String platform;
//     if (!kIsWeb) {
//       if (Platform.isIOS) {
//         platform = 'iOS';
//       } else {
//         platform = 'Android';
//       }
//     } else {
//       platform = "WEB";
//     }
//     return 'ChargedFrom${platform}_${DateTime.now().millisecondsSinceEpoch}';
//   }

//   // Naigeria payment function

//   // make payment with paystack
//   void payWithPaystack(BuildContext con) async {
//     final Charge charge = Charge()
//       ..amount = getAmountInKobo().toInt()
//       ..accessCode = 'NGN'
//       ..email =
//           Provider.of<ProfileProvider>(con, listen: false).profile.data!.email
//       ..reference = _getReference();
//     try {
//       CheckoutResponse response = await plugin.checkout(con, charge: charge);
//       if (response.status == true) {
//         Map<String, dynamic> data = {
//           "country_id": countryId,
//           "state_id": stateId,
//           "city_id": cityId,
//           "address": addressController.text,
//           "quantity": quantity.toInt(),
//           "transaction_id": response.reference,
//           "payment_method": "PAYPAL",
//         };
//         EasyLoading.show();
//         isDataFetched = true;
//         notifyListeners();
//         try {
//           final apiService = RequestATabRepository();
//           final response = await apiService.postRequest(
//               psValueHolder?.userToken ?? '', data);
//           if (response.success!) {
//             EasyLoading.dismiss();
//             clearDetailsField();
//             Navigator.of(con).pushNamed(RoutePaths.requestPaymentSuccess);
//             fetchCountries();
//             fetchTabs();
//           } else {
//             EasyLoading.dismiss();
//             isDataFetched = false;
//             notifyListeners();
//             Utils.displayErrorMessage(con, response.message!);
//           }
//         } catch (e) {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, 'an error occured');
//           if (kDebugMode) {
//             print(e);
//           }
//         }
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, 'Payment Failed');
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(con, 'An Error Occured');
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }

//   Future<void> initializePaymentWithMonnify(BuildContext con) async {
//     double a = double.parse(getAmount());
//     final transaction = TransactionDetails().copyWith(
//       amount: a,
//       currencyCode: 'NGN',
//       customerName: Provider.of<ProfileProvider>(con, listen: false)
//           .profile
//           .data!
//           .firstName,
//       customerEmail:
//           Provider.of<ProfileProvider>(con, listen: false).profile.data!.email,
//       paymentReference: DateTime.now().microsecondsSinceEpoch.toString(),
//       metaData: {"ip": "0.0.0.0", "device": "mobile"},
//       paymentMethods: [
//         PaymentMethod.CARD,
//         PaymentMethod.ACCOUNT_TRANSFER,
//         PaymentMethod.USSD
//       ],
//     );

//     try {
//       final response =
//           await monnify?.initializePayment(transaction: transaction);
//       if (response!.transactionStatus == "PAID") {
//         Map<String, dynamic> data = {
//           "country_id": countryId,
//           "state_id": stateId,
//           "city_id": cityId,
//           "address": addressController.text,
//           "quantity": quantity.toInt(),
//           "transaction_id": response.transactionReference,
//           "payment_method": paymentType
//         };
//         EasyLoading.show();
//         isDataFetched = true;
//         notifyListeners();
//         try {
//           final apiService = RequestATabRepository();
//           final response = await apiService.postRequest(
//               psValueHolder?.userToken ?? '', data);
//           if (response.success!) {
//             EasyLoading.dismiss();
//             clearDetailsField();
//             Navigator.of(con).pushNamed(RoutePaths.requestPaymentSuccess);
//             fetchCountries();
//             fetchTabs();
//           } else {
//             EasyLoading.dismiss();
//             isDataFetched = false;
//             notifyListeners();
//             Utils.displayErrorMessage(con, response.message!);
//           }
//         } catch (e) {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, 'an error occured');
//           if (kDebugMode) {
//             print(e);
//           }
//         }
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, 'Payment Failed');
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(con, 'An Error Occured');
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }

//   // USA payment function

//   void makePaymentWithPayPal(BuildContext con) async {
//     String generateTransactionId() {
//       DateTime currentDateTime = DateTime.now();
//       String formattedDateTime =
//           DateFormat('yyyyMMddHHmmss').format(currentDateTime);
//       int randomIdentifier = Random().nextInt(1000);

//       return 'TX-$formattedDateTime-$randomIdentifier';
//     }

//     BraintreeDropInResult? result = await BraintreeDropIn.start(_request);
//     if (result != null) {
//       try {
//         if (result.paymentMethodNonce != null) {
//           Map<String, dynamic> data = {
//             "country_id": countryId,
//             "state_id": stateId,
//             "city_id": cityId,
//             "address": addressController.text,
//             "quantity": quantity.toInt(),
//             "transaction_id": generateTransactionId(),
//             "payment_method": usPaymentType
//           };
//           EasyLoading.show();
//           isDataFetched = true;
//           notifyListeners();
//           try {
//             final apiService = RequestATabRepository();
//             final response = await apiService.postRequest(
//                 psValueHolder?.userToken ?? '', data);
//             if (response.success!) {
//               EasyLoading.dismiss();
//               clearDetailsField();
//               Navigator.of(con).pushNamed(RoutePaths.requestPaymentSuccess);
//               fetchCountries();
//               fetchTabs();
//             } else {
//               EasyLoading.dismiss();
//               isDataFetched = false;
//               notifyListeners();
//               Utils.displayErrorMessage(con, response.message!);
//             }
//           } catch (e) {
//             EasyLoading.dismiss();
//             Utils.displayErrorMessage(con, 'an error occured');
//             if (kDebugMode) {
//               print(e);
//             }
//           }
//         } else {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, 'Payment Failed');
//         }
//       } catch (e) {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, 'An Error Occured');
//         if (kDebugMode) {
//           print(e);
//         }
//       }
//     }
//   }

//   void fetchStateAndSetCountryId(int id) {
//     if (state.isNotEmpty) {
//       state.clear();
//       notifyListeners();
//     } else if (stateName != null) {
//       stateName = null;
//       notifyListeners();
//     } else if (stateId != null) {
//       stateId = null;
//       notifyListeners();
//     } else if (state.isEmpty || stateId == null || stateName == null) {
//       setCountryId(id);
//       notifyListeners();
//       fetchStates();
//       notifyListeners();
//     }
//     notifyListeners();
//   }

//   void fetchCityAndSetStateId(int id) {
//     if (city.isNotEmpty) {
//       city.clear();
//       notifyListeners();
//     } else if (cityName != null) {
//       cityName = null;
//       notifyListeners();
//     } else if (cityId != null) {
//       cityId = null;
//       notifyListeners();
//     } else if (city.isEmpty || cityId == null || cityName == null) {
//       setStateId(id);
//       notifyListeners();
//       fetchCities();
//       notifyListeners();
//     }
//     notifyListeners();
//   }

//   void clearDetailsField() {
//     paymentType = 'PAYSTACK';
//     quantity = 1;
//     addressController.clear();
//     country.clear();
//     state.clear();
//     city.clear();
//     cityId = null;
//     countryId = null;
//     stateId = null;
//     countryName = null;
//     stateName = null;
//     cityName = null;
//     notifyListeners();
//   }

//   String getFormattedDateTime(dynamic createdAt) {
//     if (createdAt is DateTime) {
//       return DateFormat('MMM d, y HH:mm').format(createdAt);
//     } else if (createdAt is String) {
//       DateTime? parsedDateTime = DateTime.tryParse(createdAt);
//       if (parsedDateTime != null) {
//         String formattedDateTime =
//             DateFormat('MMM d, y HH:mm').format(parsedDateTime);
//         return formattedDateTime;
//       }
//     }
//     return '';
//   }

//   String? validateText(value) {
//     if (value!.isEmpty) {
//       return 'Required';
//     }
//     return null;
//   }
// }
