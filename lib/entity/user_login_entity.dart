// // ignore_for_file: unnecessary_null_comparison

// import 'package:vendor/entity/user_entity.dart';
// import 'package:vendor/entity/user_token_entity.dart';
// import '../core/common/api_response_object.dart';

// class UserLoginEntity extends ApiObject<UserLoginEntity> {
//   UserEntity? user;
//   UserTokenEntity? accessToken;

//   UserLoginEntity({this.user, this.accessToken});

//   // @override
//   UserLoginEntity fromMap(dynamicData) {
//     return UserLoginEntity(
//       user: dynamicData['user'] != null ? UserEntity().fromMap(dynamicData['user']) : null,
//       accessToken: dynamicData['token'] != null ? UserTokenEntity().fromMap(dynamicData['token']) : null,
//     );
//   }

//   @override
//   List<UserLoginEntity> fromMapList(List dynamicDataList) {
//     final List<UserLoginEntity> subUserList = <UserLoginEntity>[];

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
//   Map<String, dynamic>? toMap(UserLoginEntity object) {
//     if (object != null) {
//       final Map<String, dynamic> data = <String, dynamic>{};
//       data['user'] = object.user != null ? UserEntity().toMap(object.user!) : null;
//       data['token'] = object.accessToken;
//       return data;
//     } else {
//       return null;
//     }
//   }

//   @override
//   List<Map<String, dynamic>?> toMapList(List<UserLoginEntity> objectList) {
//     final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
//     //if (objectList != null) {
//     for (UserLoginEntity? data in objectList) {
//       if (data != null) {
//         mapList.add(toMap(data));
//       }
//     }
//     //}
//     return mapList;
//   }
// }
