// ignore_for_file: unnecessary_null_comparison

import 'package:quical/core/common/api_response_object.dart';

class AddOnsEntity extends ApiObject<AddOnsEntity> {
  int? id;
  String? altId;
  String? addonName;
  String? addonPrice;
  int? establishmentId;
  bool? status;
  String? createdAt;
  String? updatedAt;
  bool? isDeleted;

  AddOnsEntity({
    this.id,
    this.altId,
    this.addonName,
    this.addonPrice,
    this.establishmentId,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.isDeleted,
  });

  @override
  AddOnsEntity fromMap(dynamicData) {
    return AddOnsEntity(
      id: dynamicData['id'],
      altId: dynamicData['alt_id'],
      addonName: dynamicData['addon_name'],
      addonPrice: dynamicData['addon_price'],
      establishmentId: dynamicData['establishment_id'],
      status: dynamicData['status'],
      createdAt: dynamicData['created_at'],
      updatedAt: dynamicData['updated_at'],
      isDeleted: dynamicData['is_deleted'],
    );
  }

  @override
  List<AddOnsEntity> fromMapList(List dynamicDataList) {
    final List<AddOnsEntity> subUserList = <AddOnsEntity>[];

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
  Map<String, dynamic>? toMap(AddOnsEntity object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['id'] = object.id;
      data['alt_id'] = object.altId;
      data['addon_name'] = object.addonName;
      data['addon_price'] = object.addonPrice;
      data['establishment_id'] = object.establishmentId;
      data['status'] = object.status;
      data['created_at'] = object.createdAt;
      data['updated_at'] = object.updatedAt;
      data['is_deleted'] = object.isDeleted;
      return data;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<AddOnsEntity> objectList) {
    // TODO: implement toMapList
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (AddOnsEntity? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    //}
    return mapList;
  }
}
