// // ignore_for_file: prefer_typing_uninitialized_variables

// import 'dart:async';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/database/hive_db.dart';
// import 'package:vendor/entity/user_login_entity.dart';
// import 'package:vendor/entity/value_holder_entity.dart';
// import 'package:vendor/logic/provider/app_provider.dart';
// import 'package:vendor/logic/repository/authentication_repository.dart';
// import 'package:vendor/router/router_constant.dart';
// import 'package:vendor/utilities/utils.dart';
// import 'package:vendor/core/Notification/firebase_notification_handler.dart';
// import '../../core/common/ApiStatusResponse.dart';

// class AuthenticationProvider extends AppProvider {
//   AuthenticationProvider(
//       {required AuthenticationRepository? repo,
//       required this.valueHolder,
//       required BuildContext context,
//       int limit = 0})
//       : super(repo, context, limit) {
//     _repo = repo;
//     _context = context;
//     isDispose = false;
//     debugPrint('User Login Provider: $hashCode');
//     userLoginStream =
//         StreamController<ApiResource<UserLoginEntity>>.broadcast();
//     subscriptionUserLogin = userLoginStream.stream
//         .listen((ApiResource<UserLoginEntity> userLoginResource) {
//       _userLogin = userLoginResource;
//       if (userLoginResource.status != ApiStatus.BLOCK_LOADING &&
//           userLoginResource.status != ApiStatus.PROGRESS_LOADING) {
//         isLoading = false;
//       }

//       if (!isDispose) {
//         notifyListeners();
//       }
//     });
//   }

//   AuthenticationRepository? _repo;
//   ValueHolder? valueHolder;
//   BuildContext? _context;

//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController lastNameController = TextEditingController();
//   TextEditingController phoneNumberController = TextEditingController();
//   String? token = '';
//   var otpPinFieldController;

//   bool isEnabled = true;
//   bool obscure = true;

//   ApiResource<UserLoginEntity> _userLogin =
//       ApiResource<UserLoginEntity>(ApiStatus.NOACTION, '', null);

//   ApiResource<UserLoginEntity> get userLogin => _userLogin;

//   ApiResource<ApiStatusResponse> _apiResource =
//       ApiResource<ApiStatusResponse>(ApiStatus.NOACTION, '', null);

//   ApiResource<ApiStatusResponse> get apiResource => _apiResource;

//   late StreamController<ApiResource<UserLoginEntity>> userLoginStream;
//   late StreamSubscription<ApiResource<UserLoginEntity>> subscriptionUserLogin;

//   @override
//   void dispose() {
//     subscriptionUserLogin.cancel();
//     userLoginStream.close();
//     isDispose = true;
//     debugPrint('User Login Provider Dispose: $hashCode');
//     super.dispose();
//   }

//   Future<dynamic> loginUser(
//     BuildContext context,
//   ) async {
//     Map<dynamic, dynamic> jsonMap = {
//       "email": emailController.text,
//       "password": passwordController.text,
//       "api_token": await FirebaseNotifications.saveDeviceToken(),
//     };
//     EasyLoading.show();
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     final ApiResource<UserLoginEntity> userLogin = await _repo!.postUserLogin(
//         jsonMap, isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     if (userLogin.data != null && userLogin.data?.accessToken!.token != "") {
//       await MyHiveBox.saveObject('USER_OBJECT', userLogin.data?.user);
//       await MyHiveBox.saveString(
//           'LOGIN_TOKEN', userLogin.data?.accessToken!.token ?? '');
//       await MyHiveBox.saveObject(
//           'ESTABLISHMENT_OBJECT', userLogin.data?.user?.establishment ?? '');
//       await MyHiveBox.saveObject(
//           'COUNTRY_OBJECT', userLogin.data?.user?.country ?? '');
//       await saveToken(userLogin.data?.accessToken!.token ?? '');
//       await Future.delayed(Duration(seconds: 3));
//       EasyLoading.dismiss();
//       Navigator.of(_context!).pushNamedAndRemoveUntil(
//         RoutePaths.mainNavigationScreen,
//         (route) => false,
//       );
//     } else {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(_context!, userLogin.message);
//     }
//     notifyListeners();
//   }

//   void toggle() {
//     obscure = !obscure;
//     notifyListeners();
//   }
// }
