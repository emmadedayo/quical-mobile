// import 'package:vendor/core/common/api_response_object.dart';

// class WalletEntity extends ApiObject<WalletEntity> {
//   int? id;
//   int? vendorId;
//   String? totalEarning;
//   String? totalWithdrawn;
//   String? pendingWithdraw;
//   String? collectedCash;
//   String? createdAt;
//   String? updatedAt;

//   WalletEntity(
//       {this.id,
//       this.vendorId,
//       this.totalEarning,
//       this.totalWithdrawn,
//       this.pendingWithdraw,
//       this.collectedCash,
//       this.createdAt,
//       this.updatedAt});

//   @override
//   WalletEntity fromMap(dynamicData) {
//     return WalletEntity(
//       id: dynamicData['id'],
//       vendorId: dynamicData['vendor_id'],
//       totalEarning: dynamicData['total_earning'],
//       totalWithdrawn: dynamicData['total_withdrawn'],
//       pendingWithdraw: dynamicData['pending_withdraw'],
//       collectedCash: dynamicData['collected_cash'],
//       createdAt: dynamicData['created_at'],
//       updatedAt: dynamicData['updated_at'],
//     );
//   }

//   @override
//   List<WalletEntity> fromMapList(List dynamicDataList) {
//     final List<WalletEntity> subUserList = <WalletEntity>[];

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
//   Map<String, dynamic>? toMap(WalletEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['id'] = object.id;
//       data['vendor_id'] = object.vendorId;
//       data['total_earning'] = object.totalEarning;
//       data['total_withdrawn'] = object.totalWithdrawn;
//       data['pending_withdraw'] = object.pendingWithdraw;
//       data['collected_cash'] = object.collectedCash;
//       data['created_at'] = object.createdAt;
//       data['updated_at'] = object.updatedAt;
//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(List<WalletEntity> objectList) {
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (WalletEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}

//     return mapList;
//   }
// }
