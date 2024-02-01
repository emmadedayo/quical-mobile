import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../repository/app_repository.dart';


class AppProvider extends ChangeNotifier {
  AppProvider(this.appRepository, this.ctx, int limit) {
    if (limit != 0) {
      this.limit = limit;
    }
  }

  bool isConnectedToInternet = false;
  bool isLoading = false;
  AppRepository? appRepository;
  BuildContext? ctx;

  int? offset = 0;
  int limit = 30;
  int? _cacheDataLength = 0;
  int maxDataLoadingCount = 0;
  int maxDataLoadingCountLimit = 4;
  bool isReachMaxData = false;
  bool isDispose = false;

  void updateOffset(int dataLength) {
    if (offset == 0) {
      isReachMaxData = false;
      maxDataLoadingCount = 0;
    }
    if (dataLength == _cacheDataLength) {
      maxDataLoadingCount++;
      if (maxDataLoadingCount == maxDataLoadingCountLimit) {
        isReachMaxData = true;
      }
    } else {
      maxDataLoadingCount = 0;
    }

    offset = dataLength;
    _cacheDataLength = dataLength;
  }

  Future<void> loadValueHolder() async {
    await appRepository!.loadValueHolder();
  }

  Future<void> saveToken(String token) async {
    await appRepository!.saveUserToken(token);
  }

  // Future<UserEntity?> getHiveUser() async {
  //   final userMap = await MyHiveBox.getObject<UserEntity>('USER_OBJECT');
  //   if (userMap != null) {
  //     return userMap;
  //   }
  //   return null;
  // }

  // Future<EstablishmentEntity?> getHiveEstablishment() async {
  //   final userMap = await MyHiveBox.getObject<EstablishmentEntity>('ESTABLISHMENT_OBJECT');
  //   if (userMap != null) {
  //     return userMap;
  //   }
  //   return null;
  // }

  //  Future<CountryEntity?> getHiveCountry() async {
  //   final userMap = await MyHiveBox.getObject<CountryEntity>('COUNTRY_OBJECT');
  //   if (userMap != null) {
  //     return userMap;
  //   }
  //   return null;
  // }
}
