// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:quical/router/router_constant.dart';
import 'package:quical/utilities/utils.dart';
import '../../entity/value_holder_entity.dart';
import '../repository/splash_screen_repository.dart';
import 'app_provider.dart';

class FlashScreenProvider extends AppProvider {
  FlashScreenProvider(
      {required FlashScreenRepository? repo,
      required BuildContext context,
      this.psValueHolder,
      int limit = 0})
      : super(repo, context, limit) {
    _repo = repo;
    _context = context;
    debugPrint('App Info Provider: $hashCode');
    isDispose = false;
  }

  FlashScreenRepository? _repo;
  ValueHolder? psValueHolder;
  BuildContext? _context;

  String userToken = '';
  bool? isOnboarding;


  @override
  void dispose() {
    isDispose = true;
    debugPrint('App Info Provider Dispose: $hashCode');
    super.dispose();
  }

  Future<bool?> getOnboarding() async {
    isLoading = true;
    isOnboarding = await _repo!.getOnboarding();
    notifyListeners();
    return isOnboarding;
  }

  Future<String> getToken() async {
    isLoading = true;
    userToken = await _repo!.getToken();
    return userToken;
  }

  setToken(userToken) async {
    await _repo!.setToken(userToken);
    if (!isDispose) {
      notifyListeners();
    }
  }

  callDateFunction() async {
    Future.delayed(const Duration(seconds: 5), () async {
      if (await Utils.checkInternetConnectivity()) {
   
          if (await _repo!.getToken() == null ||
              await _repo!.getToken() == "") {
            debugPrint("==============>User Token=================");
            Navigator.of(_context!).pushNamedAndRemoveUntil(
                RoutePaths.login, (Route<dynamic> route) => false);
          } else {
            debugPrint("==============>User Token ${await _repo!.getToken()}");
            // Navigator.of(_context!).pushNamedAndRemoveUntil(
            //     RoutePaths.mainNavigationScreen,
            //     (Route<dynamic> route) => false);
          }
          //Navigator.of(_context!).pushNamedAndRemoveUntil(RoutePaths.location, (Route<dynamic> route) => false);
        } else {
          // Navigator.of(_context!).pushNamedAndRemoveUntil(
          //     RoutePaths.location, (Route<dynamic> route) => false);
        }
      }
    );
  }
}
