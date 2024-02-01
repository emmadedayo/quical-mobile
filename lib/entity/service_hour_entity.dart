// // ignore_for_file: unnecessary_question_mark, prefer_void_to_null, unnecessary_null_comparison

// import 'package:vendor/core/common/api_response_object.dart';

// class ServiceHourEntity extends ApiObject<ServiceHourEntity> {
//   String? id;
//   String? restaurantId;
//   Null? userId;
//   String? sundayStartDate;
//   String? sundayEndDate;
//   String? mondayStartDate;
//   String? mondayEndDate;
//   String? tuesdayStartDate;
//   String? tuesdayEndDate;
//   String? wednesdayStartDate;
//   String? wednesdayEndDate;
//   String? thursdayStartDate;
//   String? thursdayEndDate;
//   String? fridayStartDate;
//   String? fridayEndDate;
//   String? saturdayStartDate;
//   String? saturdayEndDate;
//   String? createdAt;
//   String? updatedAt;

//   ServiceHourEntity({
//     this.id,
//     this.userId,
//     this.restaurantId,
//     this.mondayStartDate,
//     this.mondayEndDate,
//     this.tuesdayStartDate,
//     this.tuesdayEndDate,
//     this.wednesdayStartDate,
//     this.wednesdayEndDate,
//     this.thursdayStartDate,
//     this.thursdayEndDate,
//     this.fridayStartDate,
//     this.fridayEndDate,
//     this.saturdayStartDate,
//     this.saturdayEndDate,
//     this.sundayStartDate,
//     this.sundayEndDate,
//   });

//   @override
//   ServiceHourEntity fromMap(dynamicData) {
//     return ServiceHourEntity(
//       id: dynamicData['id'],
//       userId: dynamicData['user_id'],
//       restaurantId: dynamicData['restaurant_id'],
//       sundayStartDate: dynamicData['sunday_start_date'],
//       sundayEndDate: dynamicData['sunday_end_date'],
//       mondayStartDate: dynamicData['monday_start_date'],
//       mondayEndDate: dynamicData['monday_end_date'],
//       tuesdayStartDate: dynamicData['tuesday_start_date'],
//       tuesdayEndDate: dynamicData['tuesday_end_date'],
//       wednesdayStartDate: dynamicData['wednesday_start_date'],
//       wednesdayEndDate: dynamicData['wednesday_end_date'],
//       thursdayStartDate: dynamicData['thursday_start_date'],
//       thursdayEndDate: dynamicData['thursday_end_date'],
//       fridayStartDate: dynamicData['friday_start_date'],
//       fridayEndDate: dynamicData['friday_end_date'],
//       saturdayStartDate: dynamicData['saturday_start_date'],
//       saturdayEndDate: dynamicData['saturday_end_date'],
//     );
//   }

//   @override
//   List<ServiceHourEntity> fromMapList(List dynamicDataList) {
//     final List<ServiceHourEntity> subUserList = <ServiceHourEntity>[];

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
//   Map<String, dynamic>? toMap(ServiceHourEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['id'] = object.id;
//       data['user_id'] = object.userId;
//       data['restaurant_id'] = object.restaurantId;
//       data['sunday_start_date'] = object.sundayStartDate;
//       data['sunday_end_date'] = object.sundayEndDate;
//       data['monday_start_date'] = object.mondayStartDate;
//       data['monday_end_date'] = object.mondayEndDate;
//       data['tuesday_start_date'] = object.tuesdayStartDate;
//       data['tuesday_end_date'] = object.tuesdayEndDate;
//       data['wednesday_start_date'] = object.wednesdayStartDate;
//       data['wednesday_end_date'] = object.wednesdayEndDate;
//       data['thursday_start_date'] = object.thursdayStartDate;
//       data['thursday_end_date'] = object.thursdayEndDate;
//       data['friday_start_date'] = object.fridayStartDate;
//       data['friday_end_date'] = object.fridayEndDate;
//       data['saturday_start_date'] = object.saturdayStartDate;
//       data['saturday_end_date'] = object.saturdayEndDate;
//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(List<ServiceHourEntity> objectList) {
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (ServiceHourEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}

//     return mapList;
//   }
// }
