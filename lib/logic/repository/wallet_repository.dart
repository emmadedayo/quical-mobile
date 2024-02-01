


// import 'dart:async';

// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/wallet_entity.dart';
// import 'package:vendor/logic/repository/app_repository.dart';

// import '../../core/common/api_resources.dart';

// class WalletRepository extends AppRepository {
//   WalletRepository({required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//   Future<dynamic> getWallet(StreamController<ApiResource<WalletEntity>> userListStream, String apiToken, bool isConnectedToInternet, ApiStatus status, {bool isLoadFromServer = true}) async {
//     if (isConnectedToInternet) {
//       ApiResource<WalletEntity> resource = await _psApiService.getWallet(apiToken);
//       if (resource.status == ApiStatus.SUCCESS) {
//         userListStream.sink.add(resource);
//         return resource;
//       }
//     }
//   }

 

 
// }
