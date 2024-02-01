
// // ignore_for_file: unnecessary_null_comparison

// import 'package:vendor/entity/order_transaction_entity.dart';

// import '../core/common/api_response_object.dart';

// class MenuEntity extends ApiObject<MenuEntity> {
//   String? id;
//   String? menuCategoryId;
//   String? menuImage;
//   String? menuName;
//   String? menuDescription;
//   int? menuPrice;
//   String? restaurantId;
//   String? slug;
//   List<OrderTransactionAddOnsEntity> orderTransactionAddOnsEntity;

//   MenuEntity({
//     this.id,
//     this.menuCategoryId,
//     this.menuImage,
//     this.menuName,
//     this.menuDescription,
//     this.menuPrice,
//     this.restaurantId,
//     this.orderTransactionAddOnsEntity = const <OrderTransactionAddOnsEntity>[],
//   });

//   @override
//   MenuEntity fromMap(dynamicData) {
//     return MenuEntity(
//       id: dynamicData['id'],
//       menuCategoryId: dynamicData['menu_category_id'],
//       menuImage: dynamicData['menu_image'],
//       menuName: dynamicData['menu_name'],
//       menuDescription: dynamicData['menu_description'],
//       restaurantId:  dynamicData['restaurant_id'],
//       //check if menuPrice is int or double if double make it int else make it int
//       menuPrice: dynamicData['menu_price'] is int
//           ? dynamicData['menu_price']
//           : dynamicData['menu_price'].toInt(),
//       orderTransactionAddOnsEntity: dynamicData['order_addons_transaction'] != null
//           ? OrderTransactionAddOnsEntity().fromMapList(dynamicData['order_addons_transaction'])
//           : <OrderTransactionAddOnsEntity>[],
//     );
//   }

//   @override
//   List<MenuEntity> fromMapList(List dynamicDataList) {
//     final List<MenuEntity> subUserList = <MenuEntity>[];

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
//   Map<String, dynamic>? toMap(MenuEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['id'] = object.id;
//       data['menu_category_id'] = object.menuCategoryId;
//       data['menu_image'] = object.menuImage;
//       data['menu_name'] = object.menuName;
//       data['menu_description'] = object.menuDescription;
//       data['menu_price'] = object.menuPrice;
//       data['menu_addons'] = object.orderTransactionAddOnsEntity != null
//           ? OrderTransactionAddOnsEntity().toMapList(object.orderTransactionAddOnsEntity)
//           : <OrderTransactionAddOnsEntity>[];

//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(List<MenuEntity> objectList) {
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (MenuEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}
//     return mapList;
//   }
// }
