// // ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print, depend_on_referenced_packages, use_build_context_synchronously, unnecessary_null_comparison

// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:provider/provider.dart';
// import 'package:vendor/entity/orders_response.dart';
// import 'package:intl/intl.dart';
// import 'package:vendor/logic/provider/profile_provider.dart';
// import 'package:vendor/utilities/utils.dart';
// import '../../config/ps_colors.dart';
// import '../../entity/get_rider_by_id_response.dart';
// import '../../entity/request_a_ride.dart';
// import '../../entity/value_holder_entity.dart';
// import '../../presentation/order/widgets/confirm_order_modal.dart';
// import '../../presentation/order/widgets/order_list_card.dart';
// import '../../presentation/order/widgets/reject_order_modal.dart';
// import '../repository/order_repository.dart';

// class OrderProvider extends ChangeNotifier {
//   OrderProvider(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }
//   // init method
//   void init() async {
//     await fetchOrders();
//     const OrderListCard();
//   }

//   // dispose method
//   @override
//   void dispose() {
//     //
//     super.dispose();
//   }

//   // textediting controller
//   TextEditingController processingTimeController = TextEditingController();

//   TextEditingController messageController = TextEditingController();

//   //form key
//   final GlobalKey<FormState> processFormkey = GlobalKey<FormState>();

//   // declearations
//   ValueHolder? psValueHolder;
//   BuildContext context;
//   int? addonTotalPrice;
//   bool showDropDown = false;

//   // strings
//   String? token;
//   String? orderStatusvalue;
//   String? confirmedStatusValue;
//   String? countryCurrencySymbol;
//   String searchQuery = '';
//   String selectedOrderStatus = 'All';
//   String? orderStatusType;
//   String? orderStatusType1;
//   bool isDataFetched = false;
//   String reasonForOrderRejection = 'Out Of Item (s)';
//   bool isOrderRejected = false;
//   String countDownTime = '25';
//   String requestARideOption = "CAR";

//   void setAddonPrice(int price) {
//     addonTotalPrice = price;
//     notifyListeners();
//   }

//   //list
//   List<Order> orderCard = <Order>[];
//   List<Order> searched = <Order>[];
//   List<String> orderStatus2 = <String>[
//     'All',
//     'PENDING',
//     'CONFIRMED',
//     'PROCESSING',
//     'PICKED-UP',
//     'DELIVERED',
//     'CANCELLED',
//   ];

//   List<String> orderStatus = <String>[
//     'HANDOVER',
//     'PICKED-UP',
//     'DELIVERED',
//   ];

//   List<String> orderStatusForConfirmedOrders = <String>[
//     'PROCESSING',
//     'PICKED-UP',
//     'HANDOVER',
//   ];

//   List<String> requestARideOptionList = ["CAR", "LEG", "BICYCLE", "BIKE"];

//   Order order = Order();

//   //search function
//   void setSearchQuery(String query) {
//     searchQuery = query;
//     notifyListeners();
//   }

//   void setOrderAndNavigate(Order orde) {
//     order = orde;
//   }

//   void updateSearchedOrders() {
//     searched = orderCard
//         .where((order) => order.id.toString().contains(searchQuery))
//         .toList();
//     notifyListeners();
//   }

//   void searchedOrdersByStatus() {
//     if (selectedOrderStatus == 'All') {
//       searched = orderCard
//           .where((order) => order.id.toString().contains(searchQuery))
//           .toList();
//     } else {
//       searched = orderCard
//           .where((order) => order.orderStatus == selectedOrderStatus)
//           .toList();
//       notifyListeners();
//     }
//   }

//   // order datetime
//   dynamic getDateTimeFromStatus() {
//     if (order.orderStatus == 'CONFIRMED') {
//       return order.confirmed;
//     } else if (order.orderStatus == 'PENDING') {
//       return order.pending;
//     } else if (order.orderStatus == 'DELIVERED') {
//       return order.delivered;
//     } else if (order.orderStatus == 'PICKED-UP') {
//       return order.pickedUp;
//     } else if (order.orderStatus == 'CANCELLED') {
//       return order.canceled;
//     } else if (order.orderStatus == 'PROCESSING') {
//       return order.processing;
//     } else if (order.orderStatus == 'HANDOVER') {
//       return order.handover;
//     } else {
//       return null;
//     }
//   }

//   Color getStatusTextColor(String? orderStatus) {
//     switch (orderStatus) {
//       case 'CONFIRMED':
//         return PsColors.confirmedOrderTextColor;
//       case 'PENDING':
//         return PsColors.mainColor;
//       case 'DELIVERED':
//         return PsColors.greenColor;
//       case 'PICKED-UP':
//         return PsColors.homeNewsConColor;
//       case 'CANCELLED':
//         return PsColors.darkRed;
//       case 'PROCESSING':
//         return PsColors.smallGetSupportConColor;
//       case "HANDOVER":
//         return PsColors.campainPndinColor;
//       default:
//         return PsColors.redColor;
//     }
//   }

//   // functions to fetch data
//   Future<void> fetchOrders() async {
//     try {
//       isDataFetched = true;
//       notifyListeners();
//       final _apiService = OrderRepository();
//       final response =
//           await _apiService.fetchOrders(psValueHolder?.userToken ?? '');
//       if (response.success!) {
//         orderCard = response.data!;
//         searched = orderCard;
//         notifyListeners();
//         countryCurrencySymbol =
//             psValueHolder?.countryObject!.countryCurrencySymbol!;
//         token = psValueHolder?.userToken;
//         notifyListeners();
//         isDataFetched = false;
//         notifyListeners();
//       } else {
//         print(response.message);
//         isDataFetched = false;
//         notifyListeners();
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   // change order status for confirmed order
//   void setOrderStatusvalue(
//       String value, String orderId, BuildContext con) async {
//     confirmedStatusValue = value;
//     notifyListeners();

//     orderStatusType = confirmedStatusValue;
//     notifyListeners();
//     Map<String, dynamic> data = {
//       "order_type": orderStatusType,
//     };
//     notifyListeners();

//     if (confirmedStatusValue == 'HANDOVER') {
//       orderStatusType = 'HANDOVER';
//       notifyListeners();
//     } else if (confirmedStatusValue == 'CONFIRMED') {
//       orderStatusType = 'CONFIRMED';
//       notifyListeners();
//     } else if (confirmedStatusValue == 'PROCESSING') {
//       final processResult = await showModalBottomSheet(
//           context: con,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               top: Radius.circular(20),
//             ),
//           ),
//           isScrollControlled: true,
//           builder: (builder) {
//             return const ConfirmOrderModal();
//           });
//       if (processResult == null) {
//         confirmedStatusValue = null;
//         notifyListeners();
//       }

//       return;
//     } else if (confirmedStatusValue == 'CANCELLED') {
//       final rejectResult = await showModalBottomSheet(
//           context: con,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               top: Radius.circular(20),
//             ),
//           ),
//           isScrollControlled: true,
//           builder: (builder) {
//             return const RejectOrderModal();
//           });

//       if (isOrderRejected == true) {
//         Navigator.pop(con);
//         fetchOrders();
//         messageController.clear();
//         confirmedStatusValue = null;
//         isOrderRejected = false;
//         notifyListeners();
//         reasonForOrderRejection = 'Out Of Item (s)';
//         notifyListeners();
//       } else if (rejectResult == null) {
//         confirmedStatusValue = null;
//         notifyListeners();
//       }

//       return;
//     } else if (confirmedStatusValue == 'PICKED-UP') {
//       orderStatusType = 'PICKED-UP';
//       notifyListeners();
//     } else if (confirmedStatusValue == 'DELIVERED') {
//       orderStatusType = 'DELIVERED';
//       notifyListeners();
//     }
//     try {
//       final _apiService = OrderRepository();
//       EasyLoading.show();
//       final response = await _apiService.changeOrderStatus(
//           psValueHolder?.userToken ?? '', orderId, data);
//       notifyListeners();

//       if (response.success!) {
//         EasyLoading.dismiss();
//         Navigator.pop(con);
//         fetchOrders();
//         confirmedStatusValue = null;
//         notifyListeners();
//         orderStatusType = '';
//         notifyListeners();
//       } else {
//         confirmedStatusValue = null;
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//       }
//     } catch (e) {
//       confirmedStatusValue = null;
//       print(e);
//       Utils.displayErrorMessage(con, "an error occurred");
//     }
//   }

//   // change order status for processing order
//   void setOrderStatusvalueForProcessing(
//       String value, String orderId, BuildContext con) async {
//     orderStatusvalue = value;
//     notifyListeners();

//     orderStatusType1 = orderStatusvalue;
//     notifyListeners();
//     Map<String, dynamic> data = {
//       "order_type": orderStatusType1,
//     };
//     notifyListeners();

//     if (orderStatusvalue == 'HANDOVER') {
//       orderStatusType1 = 'HANDOVER';
//       notifyListeners();
//     } else if (orderStatusvalue == 'CONFIRMED') {
//       orderStatusType1 = 'CONFIRMED';
//       notifyListeners();
//     } else if (orderStatusvalue == 'PROCESSING') {
//       final processResult = await showModalBottomSheet(
//           context: con,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               top: Radius.circular(20),
//             ),
//           ),
//           isScrollControlled: true,
//           builder: (builder) {
//             return const ConfirmOrderModal();
//           });
//       if (processResult == null) {
//         orderStatusvalue = null;
//         notifyListeners();
//       }

//       return;
//     } else if (orderStatusvalue == 'CANCELLED') {
//       final rejectResult = await showModalBottomSheet(
//           context: con,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               top: Radius.circular(20),
//             ),
//           ),
//           isScrollControlled: true,
//           builder: (builder) {
//             return const RejectOrderModal();
//           });

//       if (isOrderRejected == true) {
//         Navigator.pop(con);
//         fetchOrders();
//         messageController.clear();
//         orderStatusvalue = null;
//         isOrderRejected = false;
//         notifyListeners();
//         reasonForOrderRejection = 'Out Of Item (s)';
//         notifyListeners();
//       } else if (rejectResult == null) {
//         orderStatusvalue = null;
//         notifyListeners();
//       }

//       return;
//     } else if (orderStatusvalue == 'PICKED-UP') {
//       orderStatusType1 = 'PICKED-UP';
//       notifyListeners();
//     } else if (orderStatusvalue == 'DELIVERED') {
//       orderStatusType1 = 'DELIVERED';
//       notifyListeners();
//     }
//     try {
//       final _apiService = OrderRepository();
//       EasyLoading.show();
//       final response = await _apiService.changeOrderStatus(
//           psValueHolder?.userToken ?? '', orderId, data);
//       notifyListeners();

//       if (response.success!) {
//         EasyLoading.dismiss();
//         Navigator.pop(con);
//         fetchOrders();
//         orderStatusvalue = null;
//         notifyListeners();
//         orderStatusType1 = '';
//         notifyListeners();
//       } else {
//         orderStatusvalue = null;
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//       }
//     } catch (e) {
//       orderStatusvalue = null;
//       print(e);
//       Utils.displayErrorMessage(con, "an error occurred");
//     }
//   }

//   void setOrderReason(String reason) {
//     reasonForOrderRejection = reason;
//     notifyListeners();
//   }

//   void confirmedOrder(BuildContext con, String orderId) async {
//     Map<String, dynamic> data = {
//       "order_type": 'CONFIRMED',
//     };
//     EasyLoading.show();
//     try {
//       final _apiService = OrderRepository();

//       final response = await _apiService.changeOrderStatus(
//           psValueHolder?.userToken ?? '', orderId, data);
//       notifyListeners();

//       if (response.success!) {
//         EasyLoading.dismiss();
//         Navigator.pop(con);
//         fetchOrders();
//         confirmedStatusValue = null;
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//       }
//     } catch (e) {
//       print(e);
//       Utils.displayErrorMessage(con, "an error occurred");
//     }
//   }

//   //

//   void processOrder(BuildContext con, String orderId) async {
//     Map<String, dynamic> data = {
//       "processing_time": processingTimeController.text,
//     };
//     if (processFormkey.currentState!.validate()) {
//       processFormkey.currentState!.save();

//       try {
//         final _apiService = OrderRepository();
//         EasyLoading.show();
//         final response = await _apiService.proccessOrder(
//             psValueHolder?.userToken ?? '', orderId, data);
//         notifyListeners();

//         if (response.success!) {
//           EasyLoading.dismiss();
//           Navigator.pop(con);
//           Navigator.pop(con);
//           processingTimeController.clear();
//           fetchOrders();
//         } else {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, response.message!);
//         }
//       } catch (e) {
//         print(e);
//         Utils.displayErrorMessage(con, "an error occurred");
//       }
//     }
//   }

//   void rejectOrder(String orderId, BuildContext con) async {
//     String message =
//         messageController.text.isEmpty ? '' : messageController.text;
//     Map<String, dynamic> rejectOrderData = {
//       "reason": reasonForOrderRejection,
//       "message": message,
//     };
//     try {
//       EasyLoading.show();
//       final _apiService = OrderRepository();

//       final response = await _apiService.rejectOrder(
//           psValueHolder?.userToken ?? '', orderId, rejectOrderData);
//       notifyListeners();

//       if (response.success!) {
//         EasyLoading.dismiss();
//         isOrderRejected = true;
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//         isOrderRejected = false;
//         notifyListeners();
//       }
//       notifyListeners();
//     } catch (e) {
//       EasyLoading.dismiss();
//       isOrderRejected = false;
//       notifyListeners();
//       Utils.displayErrorMessage(con, 'an error ocurred');
//       print(e);
//     }
//   }

//   // search and get ride
//   GetRiderByIdResponse getRider = GetRiderByIdResponse();
//   double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
//     const double earthRadius = 6371.0; // Earth's radius in kilometers

//     num dLat = radians(lat2 - lat1);
//     num dLon = radians(lon2 - lon1);

//     double a = sin(dLat / 2) * sin(dLat / 2) +
//         cos(radians(lat1)) * cos(radians(lat2)) * sin(dLon / 2) * sin(dLon / 2);

//     double c = 2 * atan2(sqrt(a), sqrt(1 - a));

//     double distance = earthRadius * c;

//     return distance;
//   }

//   Future<void> fetchRiderById(BuildContext con, int riderId) async {
//     try {
//       EasyLoading.show();
//       final _apiService = OrderRepository();
//       final response = await _apiService.fetchRiderById(
//           psValueHolder?.userToken ?? '', riderId);
//       if (response.success!) {
//         EasyLoading.dismiss();
//         getRider = response;
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//         isDataFetched = false;
//         notifyListeners();
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(con, 'An error occured');
//       print(e);
//     }
//   }

//   RequestARideResponse ride = RequestARideResponse();
//   Future<void> createRide(BuildContext con) async {
//     final profile =
//         Provider.of<ProfileProvider>(con, listen: false).profile.data;
//     final distance = calculateDistance(
//         profile!.establishment!.latitude!,
//         profile.establishment!.longitude!,
//         order.deliveryAddress?.latitude ?? 10,
//         order.deliveryAddress?.longitude ?? 70000.01);
//     print(distance);
//     notifyListeners();
//     Map<String, dynamic> createRideData = {
//       "pick_up_address": profile.establishment!.address,
//       "drop_off_address": order.deliveryAddress!.address,
//       "pick_up_latitude": profile.establishment!.latitude,
//       "pick_up_longitude": profile.establishment!.longitude,
//       "drop_off_latitude": order.deliveryAddress!.latitude,
//       "drop_off_longitude": order.deliveryAddress!.longitude,
//       "ride_type": requestARideOption,
//       "km": distance,
//       "payment_type": "CASH",
//       "estimated_price": order,
//       "driver_id": ride.data!.id,
//       "driver_idd": ride.data!.driverId,
//     };
//     try {
//       EasyLoading.show();
//       final _apiService = OrderRepository();

//       final response = await _apiService.createRide(
//           psValueHolder?.userToken ?? '', createRideData);
//       notifyListeners();

//       if (response.success!) {
//         EasyLoading.dismiss();
//         fetchRiderById(con, response.data!.driverId!);
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//         isOrderRejected = false;
//         notifyListeners();
//       }
//       notifyListeners();
//     } catch (e) {
//       EasyLoading.dismiss();
//       isOrderRejected = false;
//       notifyListeners();
//       Utils.displayErrorMessage(con, 'an error ocurred');
//       print(e);
//     }
//   }

//   void searchAndCreateRide(BuildContext con) async {
//     final profile =
//         Provider.of<ProfileProvider>(con, listen: false).profile.data;

//     Map<String, dynamic> requestARideData = {
//       "latitude": profile!.establishment!.latitude,
//       "longitude": profile.establishment!.longitude,
//       "type": requestARideOption,
//       "country": psValueHolder?.countryObject!.countryName,
//     };
//     try {
//       EasyLoading.show();
//       final _apiService = OrderRepository();

//       final response = await _apiService.searchRide(
//         psValueHolder?.userToken ?? '',
//         profile.establishment!.longitude!,
//         profile.establishment!.latitude!,
//         requestARideData,
//       );
//       notifyListeners();

//       if (response.success!) {
//         ride = response;
//         notifyListeners();
//         EasyLoading.dismiss();
//         createRide(con);
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//       }
//       notifyListeners();
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(con, 'an error ocurred');
//       print(e);
//     }
//   }

//   //auto cancelled
//   void autoRejectOrder(String orderId) async {
//     Map<String, dynamic> rejectOrderData = {
//       "reason": "Automatically Rejected",
//       "message": "",
//     };
//     try {
//       final _apiService = OrderRepository();

//       final response = await _apiService.rejectOrder(
//           psValueHolder?.userToken ?? '', orderId, rejectOrderData);
//       notifyListeners();

//       if (response.success!) {
//         fetchOrders();
//       } else {}
//       notifyListeners();
//     } catch (e) {
//       print(e);
//     }
//   }

//   //go to all order
//   void goToAllOrders(BuildContext con) {
//     Navigator.pop(con);
//     Navigator.pop(con);
//     fetchOrders();
//     isOrderRejected = false;
//     messageController.clear();
//     notifyListeners();
//     confirmedStatusValue = null;
//     notifyListeners();
//     reasonForOrderRejection = 'Out Of Item (s)';
//     notifyListeners();
//   }

//   // common functions
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

//   void setRiderType(String ride) {
//     requestARideOption = ride;
//     notifyListeners();
//   }

//   void setSelectedOrderStatus(String item) {
//     selectedOrderStatus = item;
//     notifyListeners();
//   }

//   void setShowDropDown() {
//     showDropDown = !showDropDown;
//     notifyListeners();
//   }

//   void setShowDropDownToFalse() {
//     showDropDown = false;
//     notifyListeners();
//   }

//   //get function

//   String formatPriceWithCommas(double price) {
//     String formattedPrice = price.toStringAsFixed(2);
//     final parts = formattedPrice.split('.');
//     final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');

//     parts[0] = parts[0].replaceAllMapped(regex, (match) => '${match[1]},');
//     return parts.join('.');
//   }

//   String calculateTotalPrice() {
//     double totalPrice = 0.0;
//     order.orderDetails?.forEach((orderDetail) {
//       double itemPrice = orderDetail.itemBought!.menuPrice! *
//           orderDetail.itemBought!.menuQuantity!;
//       totalPrice += itemPrice;
//     });
//     return totalPrice.toString();
//   }

//   double calculateTotalAddonCost() {
//     double totalAddonCost = 0.0;
//     order.orderDetails?.forEach((orderDetail) {
//       totalAddonCost += orderDetail.itemBought!.menuAddons!
//           .map((addon) => addon.addonsTotal)
//           .fold(0.0, (sum, addonTotal) => sum + addonTotal!);
//     });
//     return totalAddonCost;
//   }

//   double calculateTotalPriceIncludingAddons() {
//     String totalPrice = calculateTotalPrice();
//     double totalAddonCost = calculateTotalAddonCost();
//     return double.parse(totalPrice) + totalAddonCost;
//   }

//   String? validateText(value) {
//     if (value!.isEmpty) {
//       return 'Required';
//     }
//     return null;
//   }

//   // time config
//   TextInputFormatter timeFormatter =
//       FilteringTextInputFormatter.allow(RegExp(r'[0-9:]'));

//   String _formatTime(String value) {
//     value = value.replaceAll(':', '');
//     try {
//       if (value.length > 4) {
//         value = value.substring(0, 4);
//       }

//       if (value.length >= 3) {
//         final minutes = int.parse(value.substring(2, 4));
//         if (minutes > 59) {
//           value = '${value.substring(0, 2)}59';
//         }
//       }

//       if (value.length >= 2) {
//         final hours = int.parse(value.substring(0, 2));
//         if (hours > 23) {
//           value = '23${value.substring(2)}';
//         }
//       }

//       if (value.length >= 2) {
//         value = value.replaceRange(2, 2, ':');
//       }
//     } catch (e) {
//       print(e);
//     }

//     return value;
//   }

//   void setTimeFormat(String value) {
//     processingTimeController.text = _formatTime(value);
//     processingTimeController.selection = TextSelection.fromPosition(
//       TextPosition(offset: processingTimeController.text.length),
//     );
//   }

//   // datetime textfield function

//   DateTime? selectedDateTime;

//   Future<void> showDateTimePicker() async {
//     final initialDateTime = selectedDateTime ?? DateTime.now();

//     final date = await showDatePicker(
//       context: context,
//       initialDate: initialDateTime,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101),
//     );

//     if (date != null) {
//       final time = await showTimePicker(
//         context: context,
//         initialTime: TimeOfDay.fromDateTime(initialDateTime),
//       );

//       if (time != null) {
//         final combinedDateTime = DateTime(
//           date.year,
//           date.month,
//           date.day,
//           time.hour,
//           time.minute,
//         );

//         selectedDateTime = combinedDateTime;
//         notifyListeners();
//         processingTimeController.text =
//             DateFormat('MMMM d, yyyy, h:mm a').format(combinedDateTime);
//         notifyListeners();
//       }
//     }
//   }

//   /// time function
//   int totalSeconds = 0;
//   bool isCountdownDone = false;
//   late Timer _timer;
//   bool isCountdownStarted = false;

//   String get formattedTime {
//     int minutes = totalSeconds ~/ 60;
//     int seconds = totalSeconds % 60;
//     return '$minutes:${seconds.toString().padLeft(2, '0')}';
//   }

//   void startCountdown(int countdownMinutes) {
//     if (!isCountdownStarted) {
//       totalSeconds = countdownMinutes * 60;
//       isCountdownStarted = true; // Set the flag to true
//       notifyListeners();

//       _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//         if (totalSeconds > 0) {
//           totalSeconds--;
//           notifyListeners();
//         } else {
//           isCountdownDone = true;
//           isCountdownStarted = false; // Reset the flag
//           _timer.cancel();
//           notifyListeners();
//         }
//       });
//     }
//   }

//   DateTime parseDateTime(String input) {
//     final List<String> parts = input.split(' ');
//     final List<String> timeParts = parts[3].split(':');

//     final String month = parts[0];
//     final int day = int.parse(parts[1].replaceAll(',', ''));
//     final int year = int.parse(parts[2].replaceAll(',', ''));
//     final int hour = int.parse(timeParts[0]);
//     final int minute = int.parse(timeParts[1]);

//     final bool isAM = parts[4] == 'AM';

//     final Map<String, int> monthMap = {
//       'January': 1,
//       'February': 2,
//       'March': 3,
//       'April': 4,
//       'May': 5,
//       'June': 6,
//       'July': 7,
//       'August': 8,
//       'September': 9,
//       'October': 10,
//       'November': 11,
//       'December': 12,
//     };

//     return DateTime(
//         year, monthMap[month]!, day, isAM ? hour : hour + 12, minute);
//   }
// }
