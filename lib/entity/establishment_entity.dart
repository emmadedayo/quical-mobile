

// // ignore_for_file: unnecessary_null_comparison

// import 'package:vendor/core/common/api_response_object.dart';

// class EstablishmentEntity extends ApiObject<EstablishmentEntity> {
//   int? id;
//   dynamic establishmentId;
//   String? name;
//   String? phone;
//   String? email;
//   String? logo;
//   double? latitude;
//   double? longitude;
//   String? address;
//   String? minimumOrder;
//   String? commission;
//   bool? scheduleOrder;
//   String? openingTime;
//   bool? isOpen;
//   String? closingTime;
//   bool? status;
//   int? vendorId;
//   bool? freeDelivery;
//   String? coverPhoto;
//   bool? delivery;
//   bool? takeAway;
//   bool? foodSection;
//   String? tax;
//   int? zoneId;
//   bool? active;
//   String? offDay;
//   dynamic gst;
//   bool? selfDeliverySystem;
//   String? minimumShippingCharge;
//   String? deliveryTime;
//   int? orderCount;
//   int? totalOrder;
//   String? kmShippingCharges;
//   dynamic establishmentModel;
//   String? maximumShippingCharge;
//   String? slug;
//   bool? orderSubscriptionActive;
//   dynamic establishmentType;
//   String? deliveryCharge;
//   String? createdAt;
//   String? updatedAt;
//   dynamic deleteAt;
//   String? altId;
//   int? countryId;
//   int? stateId;
 
//   EstablishmentEntity({
//     this.id,
//       this.establishmentId,
//       this.name,
//       this.phone,
//       this.email,
//       this.logo,
//       this.latitude,
//       this.longitude,
//       this.address,
//       this.minimumOrder,
//       this.commission,
//       this.scheduleOrder,
//       this.openingTime,
//       this.isOpen,
//       this.closingTime,
//       this.status,
//       this.vendorId,
//       this.freeDelivery,
//       this.coverPhoto,
//       this.delivery,
//       this.takeAway,
//       this.foodSection,
//       this.tax,
//       this.zoneId,
//       this.active,
//       this.offDay,
//       this.gst,
//       this.selfDeliverySystem,
//       this.minimumShippingCharge,
//       this.deliveryTime,
//       this.orderCount,
//       this.totalOrder,
//       this.kmShippingCharges,
//       this.establishmentModel,
//       this.maximumShippingCharge,
//       this.slug,
//       this.orderSubscriptionActive,
//       this.establishmentType,
//       this.deliveryCharge,
//       this.createdAt,
//       this.updatedAt,
//       this.deleteAt,
//       this.altId,
//       this.countryId,
//       this.stateId
   
//   });

//   @override
//   EstablishmentEntity fromMap(dynamicData) {
//     return EstablishmentEntity(
//       id: dynamicData['id'],
//      establishmentId : dynamicData['establishment_id'],
//     name : dynamicData['name'],
//     phone : dynamicData['phone'],
//     email : dynamicData['email'],
//     logo : dynamicData['logo'],
//     latitude : dynamicData['latitude'],
//     longitude : dynamicData['longitude'],
//     address : dynamicData['address'],
//     minimumOrder : dynamicData['minimum_order'],
//     commission : dynamicData['commission'],
//     scheduleOrder: dynamicData['schedule_order'],
//     openingTime : dynamicData['opening_time'],
//     isOpen : dynamicData['is_open'],
//     closingTime : dynamicData['closing_time'],
//     status : dynamicData['status'],
//     vendorId : dynamicData['vendor_id'],
//     freeDelivery : dynamicData['free_delivery'],
//     coverPhoto : dynamicData['cover_photo'],
//     delivery : dynamicData['delivery'],
//     takeAway : dynamicData['take_away'],
//     foodSection : dynamicData['food_section'],
//     tax : dynamicData['tax'],
//     zoneId : dynamicData['zone_id'],
//     active : dynamicData['active'],
//     offDay : dynamicData['off_day'],
//     gst : dynamicData['gst'],
//     selfDeliverySystem : dynamicData['self_delivery_system'],
//     minimumShippingCharge : dynamicData['minimum_shipping_charge'],
//     deliveryTime : dynamicData['delivery_time'],
//     orderCount : dynamicData['order_count'],
//     totalOrder : dynamicData['total_order'],
//     kmShippingCharges : dynamicData['km_shipping_charges'],
//     establishmentModel : dynamicData['establishment_model'],
//     maximumShippingCharge : dynamicData['maximum_shipping_charge'],
//     slug : dynamicData['slug'],
//     orderSubscriptionActive : dynamicData['order_subscription_active'],
//     establishmentType : dynamicData['establishment_type'],
//     deliveryCharge : dynamicData['delivery_charge'],
//     createdAt : dynamicData['created_at'],
//     updatedAt : dynamicData['updated_at'],
//     deleteAt : dynamicData['delete_at'],
//     altId : dynamicData['alt_id'],
//     countryId : dynamicData['country_id'],
//     stateId : dynamicData['state_id'],
    
//     );
//   }

//   @override
//   List<EstablishmentEntity> fromMapList(List dynamicDataList) {
//     final List<EstablishmentEntity> subUserList = <EstablishmentEntity>[];

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
//   Map<String, dynamic>? toMap(EstablishmentEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['id'] = object.id;
//        data['establishment_id'] = object.establishmentId;
//     data['name'] = object.name;
//     data['phone'] = object.phone;
//     data['email'] = object.email;
//     data['logo'] = object.logo;
//     data['latitude'] = object.latitude;
//     data['longitude'] = object.longitude;
//     data['address'] = object.address;
//     data['minimum_order'] = object.minimumOrder;
//     data['commission'] = object.commission;
//     data['schedule_order'] = object.scheduleOrder;
//     data['opening_time'] = object.openingTime;
//     data['is_open'] = object.isOpen;
//     data['closing_time'] = object.closingTime;
//     data['status'] = object.status;
//     data['vendor_id'] = object.vendorId;
//     data['free_delivery'] = object.freeDelivery;
//     data['cover_photo'] = object.coverPhoto;
//     data['delivery'] = object.delivery;
//     data['take_away'] = object.takeAway;
//     data['food_section'] = object.foodSection;
//     data['tax'] = object.tax;
//     data['zone_id'] = object.zoneId;
//     data['active'] = object.active;
//     data['off_day'] = object.offDay;
//     data['gst'] = object.gst;
//     data['self_delivery_system'] = object.selfDeliverySystem;
//     data['minimum_shipping_charge'] = object.minimumShippingCharge;
//     data['delivery_time'] = object.deliveryTime;
//     data['order_count'] = object.orderCount;
//     data['total_order'] = object.totalOrder;
//     data['km_shipping_charges'] = object.kmShippingCharges;
//     data['establishment_model'] = object.establishmentModel;
//     data['maximum_shipping_charge'] = object.maximumShippingCharge;
//     data['slug'] = object.slug;
//     data['order_subscription_active'] = object.orderSubscriptionActive;
//     data['establishment_type'] = object.establishmentType;
//     data['delivery_charge'] = object.deliveryCharge;
//     data['created_at'] = object.createdAt;
//     data['updated_at'] = object.updatedAt;
//     data['delete_at'] = object.deleteAt;
//     data['alt_id'] = object.altId;
//     data['country_id'] = object.countryId;
//     data['state_id'] = object.stateId;
     
//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(List<EstablishmentEntity> objectList) {
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (EstablishmentEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}

//     return mapList;
//   }
// }
