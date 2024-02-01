// // ignore_for_file: unnecessary_null_comparison

// import 'package:vendor/core/common/api_response_object.dart';
// import 'package:vendor/entity/menu_addons_entity.dart';

// class OrderTransactionAddOnsEntity
//     extends ApiObject<OrderTransactionAddOnsEntity> {
//   String? id;
//   String? orderTransactionId;
//   String? userId;
//   String? menuAddonsId;
//   int? quantity;
//   int? totalAmount;
//   int? amount;
//   String? menuId;
//   List<MenuAddonsEntity> menuAddons;

//   OrderTransactionAddOnsEntity({
//     this.id,
//     this.orderTransactionId,
//     this.amount,
//     this.menuAddonsId,
//     this.quantity,
//     this.userId,
//     this.menuId,
//     this.totalAmount,
//     this.menuAddons = const <MenuAddonsEntity>[],
//   });

//   @override
//   OrderTransactionAddOnsEntity fromMap(dynamicData) {
//     return OrderTransactionAddOnsEntity(
//       id: dynamicData['id'],
//       orderTransactionId: dynamicData['order_transaction_id'],
//       amount: dynamicData['amount'] ,
//       menuAddonsId: dynamicData['menu_addons_id'],
//       userId: dynamicData['user_id'],
//       menuId: dynamicData['menu_id'],
//       totalAmount: dynamicData['total_amount'],
//       quantity: dynamicData['quantity'] ,
//       menuAddons: dynamicData['menu_addons'] != null
//           ? MenuAddonsEntity().fromMapList(dynamicData['menu_addons'])
//           : <MenuAddonsEntity>[],
//     );
//   }

//   @override
//   List<OrderTransactionAddOnsEntity> fromMapList(List dynamicDataList) {
//     final List<OrderTransactionAddOnsEntity> subUserList =
//         <OrderTransactionAddOnsEntity>[];

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
//   Map<String, dynamic>? toMap(OrderTransactionAddOnsEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['id'] = object.id;
//       data['order_transaction_id'] = object.orderTransactionId;
//       data['menu_addons_id'] = object.menuAddonsId;
//       data['quantity'] = object.quantity;
//       data['user_id'] = object.userId;
//       data['menu_id'] = object.menuId;
//       data['total_amount'] = object.totalAmount;
//       data['amount'] = object.amount;
//       data['menu_addons'] = object.menuAddons != null
//           ? MenuAddonsEntity().toMapList(object.menuAddons)
//           : <MenuAddonsEntity>[];
//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(
//       List<OrderTransactionAddOnsEntity> objectList) {
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (OrderTransactionAddOnsEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}
//     return mapList;
//   }
// }
