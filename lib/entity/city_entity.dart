// ignore_for_file: unnecessary_null_comparison

import '../core/common/api_response_object.dart';

class CityEntity extends ApiObject<CityEntity> {
	int? id;
	int? stateId;
	int? countryId;
	String? cityName;

  CityEntity({this.id, this.stateId, this. countryId, this.cityName, });

  @override
  CityEntity fromMap(dynamicData) {
    return CityEntity(
      id: dynamicData['id'],
      stateId: dynamicData['state_id'],
      countryId: dynamicData['country_id'],
      cityName: dynamicData['city_name'],
    );
  }

  @override
  List<CityEntity> fromMapList(List dynamicDataList) {
    final List<CityEntity> subUserList = <CityEntity>[];

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
  Map<String, dynamic>? toMap(CityEntity object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['id'] = object.id;
      data['state_id'] = object.stateId;
      data['country_id'] = object.countryId;
      data['city_name'] = object.cityName;
      return data;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<CityEntity> objectList) {
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (CityEntity? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    //}
    return mapList;
  }
}