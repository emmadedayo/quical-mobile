

// // ignore_for_file: unnecessary_null_comparison

// import 'package:vendor/core/common/api_response_object.dart';

// class UserTokenEntity extends ApiObject<UserTokenEntity> {
//   String? type;
//   String? token;
//   String? expiresAt;

//   UserTokenEntity({
//     this.type,
//     this.token,
//     this.expiresAt,
//   });

//   @override
//   UserTokenEntity fromMap(dynamicData) {
//     return UserTokenEntity(
//       type: dynamicData['type'],
//       token: dynamicData['token'],
//       expiresAt: dynamicData['expires_at'],
//     );
//   }

//   //get firstname and lastname
//   // String get fullName => '$firstname $lastname';

//   @override
//   List<UserTokenEntity> fromMapList(List dynamicDataList) {
//     final List<UserTokenEntity> subUserList = <UserTokenEntity>[];

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
//   Map<String, dynamic>? toMap(UserTokenEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['type'] = object.type;
//       data['token'] = object.token;
//       data['expires_at'] = object.expiresAt;

//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(List<UserTokenEntity> objectList) {
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (UserTokenEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}

//     return mapList;
//   }
// }
