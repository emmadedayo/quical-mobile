import 'dart:async';
import 'dart:convert';
import 'package:quical/database/hive_db.dart';
import 'package:quical/entity/value_holder_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utilities/utils.dart';
import '../constants.dart';

class PsSharedPreferences {
  PsSharedPreferences._() {
    Utils.psPrint('init PsSharePerference $hashCode');
    futureShared = SharedPreferences.getInstance();
    futureShared.then((SharedPreferences shared) {
      this.shared = shared;
      //loadUserId('Admin');
      loadValueHolder();
    });
  }

  late Future<SharedPreferences> futureShared;
  late SharedPreferences shared;

// Singleton instance
  static final PsSharedPreferences _singleton = PsSharedPreferences._();

  // Singleton accessor
  static PsSharedPreferences get instance => _singleton;

  final StreamController<ValueHolder> _valueController = StreamController<ValueHolder>();

  Stream<ValueHolder> get psValueHolder => _valueController.stream;

  Future<dynamic> loadValueHolder() async {
    final String? userToken = shared.getString(preUserToken);
    final String? userEmail = shared.getString(USER_EMAIl);
    final bool? splashScreen = shared.getBool(ONBOARDING);
    Map<String, dynamic>? json = shared.getString(MENU_OBJECT) != null ? jsonDecode(shared.getString(MENU_OBJECT)!) : null;
    // final UserEntity? userObject = await MyHiveBox.getObject<UserEntity>('USER_OBJECT');
    // final EstablishmentEntity? establishmentObject = await MyHiveBox.getObject<EstablishmentEntity>('ESTABLISHMENT_OBJECT');
    //  final CountryEntity? countryObject = await MyHiveBox.getObject<CountryEntity>('COUNTRY_OBJECT');
    // ignore: unused_local_variable
    final int cartCount = await MyHiveBox.countItems();

    final ValueHolder valueHolder = ValueHolder(
      userEmail: userEmail,
      userToken: userToken,
      splashScreen: splashScreen,
      menuObject: json,
      // userObject: userObject,
      // establishmentObject: establishmentObject,
      // countryObject: countryObject,
    );
    _valueController.add(valueHolder);
  }

  //save object to shared preferences
  Future<dynamic> saveCart(menuObject) async {
    await shared.setString(MENU_OBJECT, jsonEncode(menuObject));
    loadValueHolder();
  }

  Future<dynamic> setUserToken(String token) async {
    await shared.setString(preUserToken, token);
    loadValueHolder();
  }

  Future<dynamic> saveUserObject(String userEmail) async {
    await shared.setString(USER_EMAIl, userEmail);
    loadValueHolder();
  }

  Future<dynamic> saveOnboarding(bool onBoarding) async {
    await shared.setBool(ONBOARDING, onBoarding);
    loadValueHolder();
  }

  Future<dynamic> clear() async {
    await shared.setString(MENU_OBJECT, jsonEncode({}));
    loadValueHolder();
  }

  void clearCart() {
    shared.setString(MENU_OBJECT, jsonEncode({}));
    loadValueHolder();
  }

  // static Future<UserEntity?> getUserObject() async {
  //   return await MyHiveBox.getObject<UserEntity>('USER_OBJECT');
  // }
}
