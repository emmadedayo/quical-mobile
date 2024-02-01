// // ignore_for_file: use_build_context_synchronously

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:vendor/utilities/utils.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
// import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';
// import '../../entity/profile_response.dart';
// import '../../entity/value_holder_entity.dart';
// import '../../router/router_constant.dart';
// import '../repository/profile_repo.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ProfileProvider extends ChangeNotifier {
//   ProfileProvider(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }
//   // init method
//   void init() {
//     fetchProfile();
//     onUserLogin();
//   }

//   // dispose method
//   @override
//   void dispose() {
//     //
//     super.dispose();
//   }

//   String? token;
//   //textEditingController

//   TextEditingController monOpenController = TextEditingController();
//   TextEditingController monCloseController = TextEditingController();
//   TextEditingController tuesOpenController = TextEditingController();
//   TextEditingController tuesCloseController = TextEditingController();
//   TextEditingController wedsOpenController = TextEditingController();
//   TextEditingController wedsCloseController = TextEditingController();
//   TextEditingController thursOpenController = TextEditingController();
//   TextEditingController thursCloseController = TextEditingController();
//   TextEditingController friOpenController = TextEditingController();
//   TextEditingController friCloseController = TextEditingController();
//   TextEditingController satOpenController = TextEditingController();
//   TextEditingController satCloseController = TextEditingController();
//   TextEditingController sunOpenController = TextEditingController();
//   TextEditingController suncloseController = TextEditingController();
//   TextEditingController adressController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController contactController = TextEditingController();
//   TextEditingController minTimeController = TextEditingController();
//   TextEditingController maxTimeController = TextEditingController();
//   TextEditingController taxController = TextEditingController();
//   // declearations

//   ValueHolder? psValueHolder;
//   BuildContext context;
//   bool isDataFetched = false;
//   final GlobalKey<FormState> establishmentConfigFormkey =
//       GlobalKey<FormState>();
//   final GlobalKey<FormState> establishmentUpdateFormkey =
//       GlobalKey<FormState>();

//   List<String> _suggestions = [];
//   OverlayEntry? _overlayEntry;
//   GlobalKey textFieldKey = GlobalKey();
//   final picker = ImagePicker();
//   XFile? pickedLogo;
//   String? base64Logo;
//   String? uploadedLogoUrl;
//   XFile? pickedCoverPhoto;
//   String? base64CoverPhoto;
//   String? uploadedCoverPhotoUrl;

//   ProfileResponse profile = ProfileResponse();

//   // functions to fetch data
//   void fetchProfile() async {
//     final apiService = ProfileRepository();
//     final response =
//         await apiService.fetchProfile(psValueHolder?.userToken ?? '');

//     if (response.success!) {
//       isDataFetched = false;
//       profile = response;
//       notifyListeners();
//       token = psValueHolder?.userToken;
//       countryName = psValueHolder?.countryObject!.countryName;
//       notifyListeners();
//     } else {
//       isDataFetched = false;
//       notifyListeners();
//       // Utils.displayErrorMessage(context, message)
//     }
//   }

//   String? countryName;

//   void updateEstablishmentOpenandClose(bool status) async {
//     Map<String, dynamic> data = {"status": status};
//     final apiService = ProfileRepository();
//     await apiService.updateEstablishmentOpenandClose(
//         psValueHolder?.userToken ?? '',
//         profile.data!.establishment!.altId!,
//         data);
//   }

//   void updateEstablishmentOrderType() async {
//     Map<String, dynamic> data = {
//       "delivery": profile.data!.establishment!.delivery,
//       "take_away": profile.data!.establishment!.takeAway,
//     };
//     final apiService = ProfileRepository();
//     await apiService.updateEstablishmentOrderType(
//         psValueHolder?.userToken ?? '',
//         profile.data!.establishment!.altId!,
//         data);
//   }

//   Map<String, dynamic> get data => {
//         "openingHours": [
//           {
//             "day": 1,
//             "openingTime": monOpenController.text,
//             "closingTime": monCloseController.text,
//           },
//           {
//             "day": 2,
//             "openingTime": tuesOpenController.text,
//             "closingTime": tuesCloseController.text,
//           },
//           {
//             "day": 3,
//             "openingTime": wedsOpenController.text,
//             "closingTime": wedsCloseController.text,
//           },
//           {
//             "day": 4,
//             "openingTime": thursOpenController.text,
//             "closingTime": thursCloseController.text,
//           },
//           {
//             "day": 5,
//             "openingTime": friOpenController.text,
//             "closingTime": friCloseController.text,
//           },
//           {
//             "day": 6,
//             "openingTime": satOpenController.text,
//             "closingTime": satCloseController.text,
//           },
//           {
//             "day": 7,
//             "openingTime": sunOpenController.text,
//             "closingTime": suncloseController.text,
//           }
//         ]
//       };

//   void updateEstablishmentOpenAndCloseTime(BuildContext con) async {
//     if (establishmentConfigFormkey.currentState!.validate()) {
//       establishmentConfigFormkey.currentState!.save();
//       try {
//         EasyLoading.show();
//         final apiService = ProfileRepository();
//         final response = await apiService.updateEstablishmentOpenAndCloseTime(
//             psValueHolder?.userToken ?? '',
//             profile.data!.establishment!.altId!,
//             data);
//         if (response.success!) {
//           EasyLoading.dismiss();
//           Utils.displaySuccessMessage(con, response.message!);
//         } else {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, response.message!);
//         }
//       } catch (e) {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, 'an error occurred.');
//       }
//     }
//   }

//   void setCloseOpenStatus(bool status) {
//     profile.data!.establishment!.isOpen = status;
//     notifyListeners();
//   }

//   void setDelivery(bool status) {
//     profile.data!.establishment!.delivery = status;
//     notifyListeners();
//   }

//   void setPickedUp(bool status) {
//     profile.data!.establishment!.takeAway = status;
//     notifyListeners();
//   }
//   //time formate

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
//       if (kDebugMode) {
//         print(e);
//       }
//     }

//     return value;
//   }

//   void setTimeFormat(String value, TextEditingController controller) {
//     controller.text = _formatTime(value);
//     controller.selection = TextSelection.fromPosition(
//       TextPosition(offset: controller.text.length),
//     );
//   }

//   String? validateText(value) {
//     if (value!.isEmpty) {
//       return 'Required';
//     }
//     return null;
//   }

//   //update my establishment

//   void fetchSuggestions(String input) async {
//     const apiKey = 'AIzaSyBAcaKQdFNRda42EOk461JzpZw7vRJcKtw';
//     final endpoint =
//         'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&key=$apiKey';

//     final response = await http.get(Uri.parse(endpoint));
//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       final predictions = jsonResponse['predictions'];

//       _suggestions =
//           List<String>.from(predictions.map<dynamic>((p) => p['description']));
//       notifyListeners();
//     } else {
//       // Handle error
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }

//   void _onSuggestionSelected(String suggestion) {
//     adressController.text = suggestion;
//     hideSuggestions();
//     // Perform any additional actions upon selecting a suggestion
//   }

//   void showSuggestions(BuildContext context) {
//     hideSuggestions();
//     final RenderBox? textFieldRenderBox =
//         textFieldKey.currentContext!.findRenderObject() as RenderBox?;
//     final textFieldSize = textFieldRenderBox!.size;
//     final textFieldOffset = textFieldRenderBox.localToGlobal(Offset.zero);
//     final overlay = Overlay.of(context);
//     _overlayEntry = OverlayEntry(
//       builder: (context) => Positioned(
//         top: textFieldOffset.dy + textFieldSize.height,
//         left: textFieldOffset.dx,
//         width: textFieldSize.width,
//         child: Card(
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: _suggestions.length,
//             itemBuilder: (BuildContext context, int index) {
//               return ListTile(
//                 title: Text(_suggestions[index]),
//                 onTap: () {
//                   _onSuggestionSelected(_suggestions[index]);
//                 },
//               );
//             },
//           ),
//         ),
//       ),
//     );
//     overlay.insert(_overlayEntry!);
//   }

//   void hideSuggestions() {
//     if (_overlayEntry != null) {
//       _overlayEntry!.remove();
//       _overlayEntry = null;
//     }
//   }

//   FocusNode focusNode = FocusNode();
//   void onFocusChanged() {
//     if (!focusNode.hasFocus) {
//       focusNode.unfocus();
//     }
//   }

//   Future<void> pickLogo() async {
//     var pickedImage = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       pickedLogo = pickedImage;
//       notifyListeners();
//     }
//   }

//   Future<void> pickCoverPhoto() async {
//     var pickedImage = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       pickedCoverPhoto = pickedImage;
//       notifyListeners();
//     }
//   }

//   void clearField() {
//     adressController.clear();
//     nameController.clear();
//     emailController.clear();
//     contactController.clear();
//     minTimeController.clear();
//     maxTimeController.clear();
//     taxController.clear();
//     pickedCoverPhoto = null;
//     pickedLogo = null;
//   }

//   void editEstablishment(BuildContext con) {
//     adressController.text = profile.data!.establishment!.address!;
//     nameController.text = profile.data!.establishment!.name!;
//     emailController.text = profile.data!.establishment!.email!;
//     contactController.text = profile.data!.establishment!.phone!;
//     minTimeController.clear();
//     maxTimeController.clear();
//     taxController.text = profile.data!.establishment!.tax!;
//     Navigator.of(con).pushNamed(RoutePaths.establishmentDetailsEdit);
//   }

//   Future<String> convertLogoFileToBase64() async {
//     if (pickedLogo != null) {
//       final imageBytes = await pickedLogo!.readAsBytes();
//       final base64Image = base64Encode(imageBytes);
//       return base64Image;
//     }
//     return '';
//   }

//   Future<XFile?> pickImage() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//     return image;
//   }

//   Future<void> getImageLogoBase64() async {
//     final XFile? image = await pickImage();
//     if (image != null) {
//       final bytes = await image.readAsBytes();
//       base64Logo = base64Encode(bytes);
//       pickedLogo = image;
//       notifyListeners();
//     }
//   }

//   Future<void> getImageCoPhotoBase64() async {
//     final XFile? image = await pickImage();
//     if (image != null) {
//       final bytes = await image.readAsBytes();
//       base64CoverPhoto = base64Encode(bytes);
//       notifyListeners();
//     }
//   }

//   Future<String> convertCoverFileToBase64() async {
//     if (pickedCoverPhoto != null) {
//       final imageBytes = await pickedCoverPhoto!.readAsBytes();
//       final base64Image = base64Encode(imageBytes);
//       return base64Image;
//     }
//     return '';
//   }

//   Future<String> imageUrlToBase64(String imageUrl) async {
//     final response = await http.get(Uri.parse(imageUrl));
//     if (response.statusCode == 200) {
//       final imageBytes = response.bodyBytes;
//       return base64Encode(imageBytes);
//     } else {
//       throw Exception('Failed to load image from URL');
//     }
//   }

//   Map<String, dynamic> get updateEstablishmentData => {
//         "name": nameController.text,
//         "phone": contactController.text,
//         "email": emailController.text,
//         "latitude": profile.data!.establishment!.latitude,
//         "longitude": profile.data!.establishment!.longitude,
//         "address": adressController.text,
//         "delivery_time":
//             "${minTimeController.text} - ${maxTimeController.text}",
//         "tax": taxController.text,
//       };

//   void updateEstablishment(BuildContext con) async {
//     if (establishmentUpdateFormkey.currentState!.validate()) {
//       establishmentUpdateFormkey.currentState!.save();

//       EasyLoading.show();
//       final apiService = ProfileRepository();
//       final response = await apiService.updateEstablishment(
//           psValueHolder?.userToken ?? '',
//           profile.data!.establishment!.altId!,
//           updateEstablishmentData);
//       if (response.success!) {
//         fetchProfile();
//         clearField();
//         EasyLoading.dismiss();
//         Navigator.pop(con);
//         Navigator.pop(con);

//         Utils.displaySuccessMessage(con, response.message!);
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//       }
//     }
//   }

//   ///

//   void onUserLogin() {
//     ZegoUIKitPrebuiltCallInvitationService().init(
//         appID: 691180846,
//         appSign:
//             "68d2d10eca4ce8f879057d9e7e3b2aa77a2154ebf925744fb0db032448000cc1",
//         userID: profile.data?.establishment?.id.toString() ?? '',
//         userName: profile.data?.establishment?.name ?? '',
//         plugins: [ZegoUIKitSignalingPlugin()],
//         ringtoneConfig: const ZegoRingtoneConfig(
//           incomingCallPath: "assets/Death Grips - Get Got.mp3",
//           outgoingCallPath: "assets/Death Grips - Get Got.mp3",
//         ));
//   }

//   //pop scope

//   Future<bool> onWillPop(BuildContext context) async {
//     return await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Are you sure?'),
//             content: const Text('Do you want to discard your changes?'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   clearField();
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
//                   clearField();
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
// }
