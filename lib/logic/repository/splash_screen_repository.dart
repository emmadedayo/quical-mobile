import 'package:flutter/cupertino.dart';

import '../../core/common/db_share_preferences.dart';
import 'app_repository.dart';

class FlashScreenRepository extends AppRepository {
  FlashScreenRepository({required PsSharedPreferences psSharedPreferences}) {
    _psSharedPreferences = psSharedPreferences;
  }

  late PsSharedPreferences _psSharedPreferences;

  Future<void> setOnboarding(bool seen) async {
    await _psSharedPreferences.shared.setBool("ONBOARDING", seen);
  }

  Future<void> setToken(String userToken) async {
    await _psSharedPreferences.shared.setString("LOGIN_TOKEN", userToken);
  }

  Future<String> getToken() async {
    final String token = _psSharedPreferences.shared.getString('LOGIN_TOKEN') ?? "";
    return token;
  }

  Future<bool> getOnboarding() async {
    final bool onBoarding = _psSharedPreferences.shared.getBool('ONBOARDING') ?? false;
    debugPrint("objectobject $onBoarding");
    return onBoarding;
  }
}

