// ignore_for_file: unnecessary_null_comparison

import 'package:quical/core/common/api_response_object.dart';

class CategoriesEntity extends ApiObject<CategoriesEntity> {
  int? id;
  String? name;
  String? image;
  bool? status;
  String? slug;
  String? createdAt;
  dynamic updatedAt;

  CategoriesEntity({
    this.id,
    this.name,
    this.image,
    this.status,
    this.slug,
    this.createdAt,
    this.updatedAt,
  });

  @override
  CategoriesEntity fromMap(dynamicData) {
    return CategoriesEntity(
      id: dynamicData['id'],
      name: dynamicData['name'],
      image: dynamicData['image'],
      status: dynamicData['status'],
      slug: dynamicData['slug'],
      createdAt: dynamicData['created_at'],
      updatedAt: dynamicData['updated_at'],
    );
  }

  @override
  List<CategoriesEntity> fromMapList(List dynamicDataList) {
    final List<CategoriesEntity> subUserList = <CategoriesEntity>[];

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
  Map<String, dynamic>? toMap(CategoriesEntity object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['id'] = object.id;
      data['name'] = object.name;
      data['image'] = object.image;
      data['status'] = object.status;
      data['slug'] = object.slug;
      data['created_at'] = object.createdAt;
      data['updated_at'] = object.updatedAt;
      return data;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<CategoriesEntity> objectList) {
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (CategoriesEntity? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    //}
    return mapList;
  }
}
