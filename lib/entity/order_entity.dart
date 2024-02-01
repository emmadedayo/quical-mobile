// // ignore_for_file: unnecessary_null_comparison

// import 'package:vendor/core/common/api_response_object.dart';
// import 'package:vendor/entity/menu_entity.dart';

// class OrderEntity extends ApiObject<OrderEntity> {
//   String? id;
//   int? orderId;
//   String? restaurantId;
//   String? userId;
//   String? menuId;
//   int? quantity;
//   int? totalAmount;
//   String? userStatus;
//   String? vendorStatus;
//   String? vendorAcceptedTime;
//   String? vendorRejectedTime;
//   String? vendorMissedTime;
//   String? pickupTime;
//   String? deliveryAddressId;
//   String? deliveryType;
//   String? createdAt;
//   List<MenuEntity> menuEntity;

//   OrderEntity({
//     this.id,
//     this.orderId,
//     this.restaurantId,
//     this.userId,
//     this.menuId,
//     this.quantity,
//     this.totalAmount,
//     this.userStatus,
//     this.vendorStatus,
//     this.vendorAcceptedTime,
//     this.vendorRejectedTime,
//     this.vendorMissedTime,
//     this.pickupTime,
//     this.deliveryAddressId,
//     this.deliveryType,
//     this.createdAt,
//     this.menuEntity = const <MenuEntity>[],
//   });

//   @override
//   OrderEntity fromMap(dynamicData) {
//     return OrderEntity(
//       id: dynamicData['id'],
//       userId: dynamicData['user_id'],
//       quantity: dynamicData['quantity'],
//       orderId: dynamicData['order_id'] ,
//       restaurantId: dynamicData['restaurant_id'],
//       userStatus: dynamicData['user_status'],
//       vendorStatus: dynamicData['vendor_status'],
//       vendorAcceptedTime: dynamicData['vendor_accepted_time'],
//       vendorRejectedTime: dynamicData['vendor_rejected_time'],
//       vendorMissedTime: dynamicData['vendor_missed_time'],
//       pickupTime: dynamicData['pickup_time'],
//       deliveryAddressId: dynamicData['delivery_address_id'],
//       deliveryType: dynamicData['delivery_type'],
//       menuId: dynamicData['menu_id'],
//       totalAmount: dynamicData['total_amount'] ,
//       createdAt: dynamicData['createdAt'],
//       menuEntity: dynamicData['menu'] != null
//           ? MenuEntity().fromMapList(dynamicData['menu'])
//           : <MenuEntity>[],
//     );
//   }

//   @override
//   List<OrderEntity> fromMapList(List dynamicDataList) {
//     final List<OrderEntity> subUserList = <OrderEntity>[];

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
//   Map<String, dynamic>? toMap(OrderEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['id'] = object.id;
//       data['user_id'] = object.userId;
//       data['quantity'] = object.quantity;
//       data['order_id'] = object.orderId;
//       data['restaurant_id'] = object.restaurantId;
//       data['total_amount'] = object.totalAmount;
//       data['user_status'] = object.userStatus;
//       data['menu_id'] = object.menuId;
//       data['vendor_status'] = object.vendorStatus;
//       data['vendor_accepted_time'] = object.vendorAcceptedTime;
//       data['vendor_rejected_time'] = object.vendorRejectedTime;
//       data['vendor_missed_time'] = object.vendorMissedTime;
//       data['pickup_time'] = object.pickupTime;
//       data['delivery_address_id'] = object.deliveryAddressId;
//       data['delivery_type'] = object.deliveryType;
//       data['createdAt'] = object.createdAt;
//       data['menu'] = object.menuEntity != null
//           ? MenuEntity().toMapList(object.menuEntity)
//           : <MenuEntity>[];
//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(List<OrderEntity> objectList) {
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (OrderEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}
//     return mapList;
//   }
// }
