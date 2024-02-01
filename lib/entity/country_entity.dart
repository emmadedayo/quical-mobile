// ignore_for_file: unnecessary_null_comparison

import '../core/common/api_response_object.dart';

class CountryEntity extends ApiObject<CountryEntity> {
  int? id;
  String? countryName;
  String? countryPhoneCode;
  String? countryCurrency;
  String? countryCurrencySymbol;
  int? operating;

  CountryEntity({
    this.id,
    this.countryName,
    this.countryPhoneCode,
    this.countryCurrency,
    this.countryCurrencySymbol,
    this.operating,
  });

  @override
  CountryEntity fromMap(dynamicData) {
    return CountryEntity(
      id: dynamicData['id'],
      countryName: dynamicData['country_name'],
      countryPhoneCode: dynamicData['country_phone_code'],
      countryCurrency: dynamicData['country_currency'],
      countryCurrencySymbol: dynamicData['country_currency_symbol'],
      operating: dynamicData['operating'],
    );
  }

  @override
  List<CountryEntity> fromMapList(List dynamicDataList) {
    final List<CountryEntity> subUserList = <CountryEntity>[];

    // if (dynamicDataList != null) {
    for (dynamic dynamicData in dynamicDataList) {
      if (dynamicData != null) {
        subUserList.add(fromMap(dynamicData));
      }
    }
    // }
    return subUserList;
  }

  @override
  Map<String, dynamic>? toMap(CountryEntity object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['id'] = object.id;
      data['country_name'] = object.countryName;
      data['country_phone_code'] = object.countryPhoneCode;
      data['country_currency'] = object.countryCurrency;
      data['country_currency_symbol'] = object.countryCurrencySymbol;
      data['operating'] = object.operating;
      return data;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<CountryEntity> objectList) {
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (CountryEntity? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    //}
    return mapList;
  }
}
