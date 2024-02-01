
import 'package:quical/entity/user_entity.dart';

import 'country_entity.dart';

class ValueHolder {
  ValueHolder({
    required this.userEmail,
    required this.userToken,
    this.splashScreen,
    this.menuObject,
    this.userObject,
    // this.establishmentObject,
    this.countryObject,
  });
  String? userToken;
  String? userEmail;
  bool? splashScreen;
  UserEntity? userObject;
  CountryEntity? countryObject;

  Map<String, dynamic>? menuObject;

  void saveMenu(Map<String, dynamic> menuObject) {
    this.menuObject = menuObject;
  }
}
