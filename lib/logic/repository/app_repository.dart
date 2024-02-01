import '../../core/common/db_share_preferences.dart';

class AppRepository {

  Future<dynamic> loadValueHolder() async {
    PsSharedPreferences.instance.loadValueHolder();
  }

  Future<dynamic> saveUserToken(String userToken) async {
    await PsSharedPreferences.instance.setUserToken(
      userToken,
    );
  }

  Future<dynamic> saveUserObject(String userToken) async {
    await PsSharedPreferences.instance.setUserToken(
      userToken,
    );
  }
}
