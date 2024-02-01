// ignore_for_file: unnecessary_null_comparison

import '../core/common/api_response_object.dart';

class MenuAddonsEntity extends ApiObject<MenuAddonsEntity> {
  String? id;
  String? menuAddonsName;
  String? menuAddonsImage;
  int? menuAddonsPrice;
  String? userId;
  String? menuId;
  String? createdAt;
  String? updatedAt;

  MenuAddonsEntity(
      {
        this.id,
        this.menuAddonsName,
        this.menuAddonsImage,
        this.menuAddonsPrice,
        this.userId,
        this.menuId,
      });


  @override
  MenuAddonsEntity fromMap(dynamicData) {
    return MenuAddonsEntity(
      id: dynamicData['id'],
      menuAddonsName: dynamicData['menu_addons_name'],
      menuAddonsImage: dynamicData['menu_addons_image'],
      menuAddonsPrice: dynamicData['menu_addons_price'] ,
      userId: dynamicData['user_id'],
      menuId: dynamicData['menu_id'],
    );
  }


  @override
  List<MenuAddonsEntity> fromMapList(List dynamicDataList) {
    final List<MenuAddonsEntity> subUserList = <MenuAddonsEntity>[];

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
  Map<String, dynamic>? toMap(MenuAddonsEntity object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['id'] = object.id;
      data['menu_addons_name'] = object.menuAddonsName;
      data['menu_addons_image'] = object.menuAddonsImage;
      data['menu_addons_price'] = object.menuAddonsPrice;
      data['user_id'] = object.userId;
      data['menu_id'] = object.menuId;
      return data;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<MenuAddonsEntity> objectList) {
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (MenuAddonsEntity? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    //}
    return mapList;
  }
}
