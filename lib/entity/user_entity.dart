// ignore_for_file: unnecessary_null_comparison

import 'package:quical/core/common/api_response_object.dart';

class UserEntity extends ApiObject<UserEntity> {
  int? id;
  String? firstName;
  String? lastName;
  int? phone;
  String? email;
  String? emailVerifiedAt;
  String? image;
  bool? status;
  String? deviceToken;
  String? createdAt;
  String? updatedAt;
  String? phoneVerifiedAt;
  String? accountStatus;
  int? countryId;
  int? zoneId;
  int? stateId;
  // CountryEntity? country;
  // EstablishmentEntity? establishment;

  UserEntity({
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.emailVerifiedAt,
    this.image,
    this.status,
    this.deviceToken,
    this.createdAt,
    this.updatedAt,
    this.phoneVerifiedAt,
    this.accountStatus,
    this.countryId,
    this.zoneId,
    this.stateId,
    // this.establishment,
    // this.country,
  });

  @override
  UserEntity fromMap(dynamicData) {
    return UserEntity(
      id: dynamicData['id'],
      firstName: dynamicData['first_name'],
      lastName: dynamicData['last_name'],
      phone: dynamicData['phone'],
      email: dynamicData['email'],
      emailVerifiedAt: dynamicData['email_verified_at'],
      image: dynamicData['image'],
      status: dynamicData['status'],
      deviceToken: dynamicData['device_token'],
      createdAt: dynamicData['created_at'],
      updatedAt: dynamicData['updated_at'],
      phoneVerifiedAt: dynamicData['phone_verified_at'],
      accountStatus: dynamicData['account_status'],
      countryId: dynamicData['country_id'],
      zoneId: dynamicData['zone_id'],
      stateId: dynamicData['state_id'],
      // country: dynamicData['country'] != null
      //     ? CountryEntity().fromMap(dynamicData['country'])
      //     : null,
      // establishment: dynamicData['establishment'] != null
      //     ? EstablishmentEntity().fromMap(dynamicData['establishment'])
      //     : null,
    );
  }

    //get firstname and lastname
  String get fullName => '$firstName $lastName';


  @override
  List<UserEntity> fromMapList(List dynamicDataList) {
    final List<UserEntity> subUserList = <UserEntity>[];

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
  Map<String, dynamic>? toMap(UserEntity object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['id'] = object.id;
      data['first_name'] = object.firstName;
      data['last_name'] = object.lastName;
      data['phone'] = object.phone;
      data['email'] = object.email;
      data['email_verified_at'] = object.emailVerifiedAt;
      data['image'] = object.image;
      data['status'] = object.status;
      data['device_token'] = object.deviceToken;
      data['created_at'] = object.createdAt;
      data['updated_at'] = object.updatedAt;
      data['phone_verified_at'] = object.phoneVerifiedAt;
      data['account_status'] = object.accountStatus;
      data['country_id'] = object.countryId;
      data['zone_id'] = object.zoneId;
      data['state_id'] = object.stateId;
      // data['country'] = object.country != null
      //     ? CountryEntity().toMap(object.country!)
      //     : null;
      // data['establishment'] = object.establishment != null
      //     ? EstablishmentEntity().toMap(object.establishment!)
      //     : null;
      return data;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<UserEntity> objectList) {
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (UserEntity? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    //}

    return mapList;
  }
}
