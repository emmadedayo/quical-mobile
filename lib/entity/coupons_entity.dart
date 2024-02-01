// import 'package:quical/core/common/api_response_object.dart';
// import 'package:vendor/core/common/api_response_object.dart';
// import 'package:vendor/entity/coupon_data_entity.dart';

// class CouponsEntity extends ApiObject<CouponsEntity> {
//   int? id;
//   String? altId;
//   String? title;
//   String? code;
//   String? startDate;
//   String? expireDate;
//   String? minPurchase;
//   String? maxDiscount;
//   String? discount;
//   String? discountType;
//   String? couponType;
//   int? limit;
//   bool? status;
//   CouponDataEntity? data;
//   int? totalUses;
//   String? createdBy;
//   String? userId;
//   String? slug;
//   int? establishmentId;
//   String? createdAt;
//   String? updatedAt;

//   CouponsEntity({
//     this.id,
//     this.altId,
//     this.title,
//     this.code,
//     this.startDate,
//     this.expireDate,
//     this.minPurchase,
//     this.maxDiscount,
//     this.discount,
//     this.discountType,
//     this.couponType,
//     this.limit,
//     this.status,
//     this.data,
//     this.totalUses,
//     this.createdBy,
//     this.userId,
//     this.slug,
//     this.establishmentId,
//     this.createdAt,
//     this.updatedAt,
//   });

//   @override
//   CouponsEntity fromMap(dynamicData) {
//     return CouponsEntity(
//       id: dynamicData['id'],
//       altId: dynamicData['alt_id'],
//       title: dynamicData['title'],
//       code: dynamicData['code'],
//       startDate: dynamicData['start_date'],
//       expireDate: dynamicData['expire_date'],
//       minPurchase: dynamicData['min_purchase'],
//       maxDiscount: dynamicData['max_discount'],
//       discount: dynamicData['discount'],
//       discountType: dynamicData['discount_type'],
//       couponType: dynamicData['coupon_type'],
//       limit: dynamicData['limit'],
//       status: dynamicData['status'],
//       data: dynamicData['data'] != null
//           ? CouponDataEntity().fromMap(dynamicData['data'])
//           : null,
//       totalUses: dynamicData['total_uses'],
//       createdBy: dynamicData['created_by'],
//       userId: dynamicData['user_id'],
//       slug: dynamicData['slug'],
//       establishmentId: dynamicData['establishment_id'],
//       createdAt: dynamicData['created_at'],
//       updatedAt: dynamicData['updated_at'],
//     );
//   }

//   @override
//   List<CouponsEntity> fromMapList(List dynamicDataList) {
//     final List<CouponsEntity> subUserList = <CouponsEntity>[];

//     // if (dynamicDataList != null) {
//     for (dynamic dynamicData in dynamicDataList) {
//       if (dynamicData != null) {
//         subUserList.add(fromMap(dynamicData));
//       }
//     }
//     // }
//     return subUserList;
//   }

//   @override
//   Map<String, dynamic>? toMap(CouponsEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['id'] = object.id;
//       data['alt_id'] = object.altId;
//       data['title'] = object.title;
//       data['code'] = object.code;
//       data['start_date'] = object.startDate;
//       data['expire_date'] = object.expireDate;
//       data['min_purchase'] = object.minPurchase;
//       data['max_discount'] = object.maxDiscount;
//       data['discount'] = object.discount;
//       data['discount_type'] = object.discountType;
//       data['coupon_type'] = object.couponType;
//       data['limit'] = object.limit;
//       data['status'] =
//           object.data != null ? CouponDataEntity().toMap(object.data!) : null;
//       data['total_uses'] = object.totalUses;
//       data['created_by'] = object.createdBy;
//       data['user_id'] = object.userId;
//       data['slug'] = object.slug;
//       data['establishment_id'] = object.establishmentId;
//       data['created_at'] = object.createdAt;
//       data['updated_at'] = object.updatedAt;
//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(List<CouponsEntity> objectList) {
//     // TODO: implement toMapList
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (CouponsEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}
//     return mapList;
//   }
// }
