// import 'dart:async';
// import 'dart:io';

// import 'package:another_flushbar/flushbar.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
// import 'package:google_api_headers/google_api_headers.dart';
// import 'package:google_maps_webservice/places.dart';
// import 'package:provider/provider.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/entity/establishment_entity.dart';
// import 'package:vendor/entity/user_entity.dart';
// import 'package:vendor/entity/value_holder_entity.dart';
// import 'package:vendor/logic/provider/profile_provider.dart';
// import 'package:vendor/logic/repository/user_repository.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:vendor/router/router_constant.dart';

// import '../../classes/cloudinaryImage.dart';
// import '../../core/common/ApiStatusResponse.dart';
// import '../../core/common/api_status.dart';
// import '../../utilities/utils.dart';
// import 'app_provider.dart';

// class UserProvider extends AppProvider {
//   UserProvider(
//       {required UserRepository? repo,
//       required this.psValueHolder,
//       required BuildContext context,
//       int limit = 0})
//       : super(repo, context, limit) {
//     _repo = repo;
//     _context = context;
//     isDispose = false;
//     debugPrint('UserEntity Provider: $hashCode');
//     initializeHive();
//     userListStream = StreamController<ApiResource<UserEntity>>.broadcast();
//     userSubscription =
//         userListStream.stream.listen((ApiResource<UserEntity> resource) {
//       if (resource.data != null) {
//         _userModel = resource;
//         holderUser = resource.data!;
//         establishmentEntity = resource.data!.establishment;
//       }
//       if (resource.status != ApiStatus.BLOCK_LOADING &&
//           resource.status != ApiStatus.PROGRESS_LOADING) {
//         isLoading = false;
//       }

//       if (!isDispose) {
//         notifyListeners();
//       }
//     });
//   }

//   UserRepository? _repo;
//   ValueHolder? psValueHolder;
//   BuildContext? _context;
//   UserEntity? holderUser;
//   String walletBalance = '₦0.00';

//   final ImagePicker picker = ImagePicker();
//   XFile? xFile;
//   String? base64string;
//   EstablishmentEntity? establishmentEntity;
//   double? latitude = 0.0;
//   double? longitude = 0.0;
//   XFile? coverPhoto;
//   File? coverPhotoFile;
//   File? profilePhotoFile;
//   XFile? profilePhoto;
//   ApiResource<ApiStatusResponse> _apiStatus =
//       ApiResource<ApiStatusResponse>(ApiStatus.NOACTION, '', null);
//   ApiResource<ApiStatusResponse> get apiStatus => _apiStatus;
//   ApiResource<UserEntity> _userModel =
//       ApiResource<UserEntity>(ApiStatus.NOACTION, '', null);

//   ApiResource<UserEntity> get userModel => _userModel;
//   bool obscure = true;

//   late StreamSubscription<ApiResource<UserEntity>> userSubscription;
//   late StreamController<ApiResource<UserEntity>> userListStream;

//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   GlobalKey<FormState> formKeys = GlobalKey<FormState>();

//   UserEntity? user;
//   EstablishmentEntity? establishment;

//   //reset password variables
//   TextEditingController oldPasswordController = TextEditingController();
//   TextEditingController newPasswordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();

//   //update profile variables
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController lastNameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();

//   //update establishment variables
//   TextEditingController establishmentNameController = TextEditingController();
//   TextEditingController establishmentAddressController =
//       TextEditingController();
//   TextEditingController establishmentPhoneController = TextEditingController();
//   TextEditingController establishmentEmailController = TextEditingController();
//   TextEditingController establishmentMaxTimeController =
//       TextEditingController();
//   TextEditingController establishmentMinTimeController =
//       TextEditingController();
//   TextEditingController establishmentTaxController = TextEditingController();

//   @override
//   void dispose() {
//     // subscriptionTransList.cancel();
//     // dataTransListStream.close();
//     userSubscription.cancel();
//     userListStream.close();
//     isDispose = true;
//     debugPrint('UserEntity Provider Dispose: $hashCode');
//     super.dispose();
//   }

//   // void setProfileInfor(BuildContext con) {
//   //   firstNameController.text = Provider.of<ProfileProvider>(con, listen: false).profile.data!.firstName!;
//   //   lastNameController.text = Provider.of<ProfileProvider>(con, listen: false).profile.data!.lastName!;
//   //   phoneController.text = Provider.of<ProfileProvider>(con, listen: false).profile.data!.phone.toString();
//   //   emailController.text = Provider.of<ProfileProvider>(con, listen: false).profile.data!.email!;
//   //   notifyListeners();
//   // }

//   Future<dynamic> getTrans() async {
//     isLoading = true;
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     // await _repo?.getTrans(dataTransListStream, psValueHolder?.userToken ?? '',
//     //     isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     isLoading = false;
//     notifyListeners();
//   }

//   Future<dynamic> getUser() async {
//     isLoading = true;
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     await _repo?.getUser(userListStream, psValueHolder?.userToken ?? '',
//         isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     notifyListeners();
//     return _userModel;
//   }

//   Future<dynamic> getTransactionHistory() async {
//     isLoading = true;
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     isLoading = false;
//     notifyListeners();
//   }

//   Future<dynamic> updateProfile() async {
//     isLoading = true;
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     Map<dynamic, dynamic> jsonMap = {
//       'first_name': firstNameController.text,
//       'last_name': lastNameController.text,
//       'phone': phoneController.text,
//     };
//     debugPrint('Update Profile Map: $jsonMap');
//     ApiResource<ApiStatusResponse> apiResources = await _repo!.updateProfile(
//         jsonMap,
//         psValueHolder?.userToken ?? '',
//         isConnectedToInternet,
//         ApiStatus.PROGRESS_LOADING);
//     if (apiResources.status == ApiStatus.SUCCESS) {
//       isLoading = false;
//       Utils.displaySuccessMessage(_context!, apiResources.message,
//           position: FlushbarPosition.TOP);
//     } else {
//       isLoading = false;
//       Utils.displayErrorMessage(_context!, apiResources.message,
//           position: FlushbarPosition.TOP);
//     }
//     isLoading = false;
//     notifyListeners();
//   }

//   Future<dynamic> updatePassword() async {
//     isLoading = true;
//     EasyLoading.show();
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     Map<dynamic, dynamic> jsonMap = {
//       'password': newPasswordController.text,
//       'password_confirmation': confirmPasswordController.text,
//       'old_password': oldPasswordController.text,
//     };
//     debugPrint('Change Profile Map: $jsonMap');
//     ApiResource<ApiStatusResponse> apiStatus = await _repo!.updatePassword(
//         jsonMap,
//         psValueHolder?.userToken ?? '',
//         isConnectedToInternet,
//         ApiStatus.PROGRESS_LOADING);
//     if (apiStatus.status == ApiStatus.SUCCESS) {
//       isLoading = false;
//       EasyLoading.dismiss();
//       Utils.displaySuccessMessage(_context!, apiStatus.message,
//           position: FlushbarPosition.TOP);
//       Navigator.of(_context!).pushNamedAndRemoveUntil(
//         RoutePaths.editProfileScreenIndex,
//         (route) => false,
//       );
//     } else {
//       isLoading = false;
//       Utils.displayErrorMessage(_context!, apiStatus.message,
//           position: FlushbarPosition.TOP);
//     }
//     notifyListeners();
//   }

//   openCamera() async {
//     xFile == null;
//     var e = await picker.pickImage(source: ImageSource.gallery);
//     xFile = e;
//     convertToBase64();
//     notifyListeners();
//   }

//   convertToBase64() async {
//     isLoading = true;
//     File imageFile = File(xFile!.path); //convert Path to File
//     CloudinaryImage cloudinaryImage = CloudinaryImage();
//     var image = await cloudinaryImage.uploadImage(imageFile, 'profile');
//     print("object;dkjkhjbhvg $image");
//     Map jsonMap = {
//       'profileImage': image,
//     };
//     uploadImage(jsonMap);
//     notifyListeners();
//   }

//   Future<dynamic> uploadImage(
//     Map<dynamic, dynamic> jsonMap,
//   ) async {
//     debugPrint('Change Profile Map: $jsonMap');
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     _apiStatus = await _repo!.uploadImage(
//         jsonMap,
//         psValueHolder?.userToken ?? '',
//         isConnectedToInternet,
//         ApiStatus.PROGRESS_LOADING);
//     isLoading = false;
//     notifyListeners();
//     return _apiStatus;
//   }

//    void toggle() {
//     obscure = !obscure;
//     notifyListeners();
//   }

//   initializeHive() async {
//     user = psValueHolder?.userObject;
//     establishment = psValueHolder?.establishmentObject;
//     notifyListeners();
//   }

//   getAddressFromGoogle(context) async {
//     var place = await PlacesAutocomplete.show(
//         context: context,
//         apiKey: dotenv.env['GOOGLE_MAP_KEY'] ?? '',
//         mode: Mode.overlay,
//         types: [],
//         strictbounds: false,
//         onError: (err) {
//           print(err);
//         });
//     try {
//       if (place != null) {
//         final plist = GoogleMapsPlaces(
//             apiKey: dotenv.env['GOOGLE_MAP_KEY'] ?? '',
//             apiHeaders: await const GoogleApiHeaders().getHeaders());
//         final detail = await plist.getDetailsByPlaceId(place.placeId ?? '');
//         //add to text controller
//         establishmentAddressController.text = detail.result.formattedAddress!;
//         latitude = detail.result.geometry!.location.lat;
//         longitude = detail.result.geometry!.location.lng;
//         if (kDebugMode) {
//           print('vknkv ${establishmentAddressController.text}');
//         }
//         //add to json map
//       }
//       notifyListeners();
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }

//   void getCoverPhotoFromGallery(BuildContext context, String type) {
//     picker.pickImage(source: ImageSource.gallery).then((value) {
//       if (value != null) {
//         if (type == 'cover') {
//           coverPhoto = value;
//           coverPhotoFile = File(coverPhoto!.path);
//           if (kDebugMode) {
//             print('Cover Photo: ${coverPhoto!.path}');
//           }
//           notifyListeners();
//         } else {
//           profilePhoto = value;
//           profilePhotoFile = File(profilePhoto!.path);
//           if (kDebugMode) {
//             print('Profile Photo: ${profilePhoto!.path}');
//           }
//           notifyListeners();
//         }
//         //  notifyListeners();
//       }
//     });
//   }

//   Future<dynamic> updateEstablishment() async {
//     try {
//       isLoading = true;
//       EasyLoading.show();
//       isConnectedToInternet = await Utils.checkInternetConnectivity();
//       Map<dynamic, dynamic> jsonMap = {
//         "name": establishmentNameController.text,
//         "phone": establishmentPhoneController.text,
//         "email": establishmentEmailController.text,
//         "latitude": latitude,
//         "longitude": longitude,
//         "address": establishmentAddressController.text,
//         "delivery_time": establishmentMinTimeController.text,
//         "tax": establishmentTaxController.text,
//       };
//       debugPrint('Change Profile Map: $jsonMap');
//       ApiResource<ApiStatusResponse> apiStatus = await _repo!
//           .updateEstablishment(jsonMap, psValueHolder?.userToken ?? '',
//               isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//       if (apiStatus.status == ApiStatus.SUCCESS) {
//         isLoading = false;
//         EasyLoading.dismiss();
//         Utils.displaySuccessMessage(_context!, apiStatus.message,
//             position: FlushbarPosition.TOP);
//         Navigator.of(_context!).pushNamedAndRemoveUntil(
//           RoutePaths.editProfileScreenIndex,
//           (route) => false,
//         );
//       } else {
//         isLoading = false;
//         Utils.displayErrorMessage(_context!, apiStatus.message,
//             position: FlushbarPosition.TOP);
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       isLoading = false;
//       print(e);
//     }
//     notifyListeners();
//   }
// }
