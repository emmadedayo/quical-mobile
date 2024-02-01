import '../core/common/api_response_object.dart';

class CouponDataEntity extends ApiObject<CouponDataEntity> {
  int? establishmentId;
  int? userId;

  CouponDataEntity({
    this.establishmentId,
    this.userId,
  });

  @override
  CouponDataEntity fromMap(dynamicData) {
    return CouponDataEntity(
      establishmentId: dynamicData['establishment_id'],
      userId: dynamicData['user_id'],
    );
  }

  @override
  List<CouponDataEntity> fromMapList(List dynamicDataList) {
    final List<CouponDataEntity> subUserList = <CouponDataEntity>[];

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
  Map<String, dynamic>? toMap(CouponDataEntity object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['establishment_id'] = object.establishmentId;
      data['user_id'] = object.userId;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<CouponDataEntity> objectList) {
    // TODO: implement toMapList
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (CouponDataEntity? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    //}
    return mapList;
  }
}
