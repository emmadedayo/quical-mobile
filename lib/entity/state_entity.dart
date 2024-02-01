// ignore_for_file: unnecessary_null_comparison

import '../core/common/api_response_object.dart';

class StateEntity extends ApiObject<StateEntity> {
int? id;
	String? countryID;
	String? stateName;

  StateEntity({this.id, this.countryID, this.stateName, });

  @override
  StateEntity fromMap(dynamicData) {
    return StateEntity(
      id: dynamicData['id'],
      countryID: dynamicData['countryID'],
      stateName: dynamicData['stateName'],
    );
  }

  @override
  List<StateEntity> fromMapList(List dynamicDataList) {
    final List<StateEntity> subUserList = <StateEntity>[];

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
  Map<String, dynamic>? toMap(StateEntity object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['id'] = object.id;
      data['countryID'] = object.countryID;
      data['stateName'] = object.stateName;
      return data;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<StateEntity> objectList) {
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (StateEntity? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    //}
    return mapList;
  }
}