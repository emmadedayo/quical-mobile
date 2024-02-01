import 'package:quical/core/common/api_resources.dart';
import 'package:quical/core/url/app_url.dart';
import 'package:quical/core/common/ApiStatusResponse.dart';
import 'package:quical/entity/add_ons_list_entity.dart';
import 'package:quical/entity/categories_entity.dart';
import 'package:quical/entity/city_entity.dart';
import 'package:quical/entity/country_entity.dart';
import 'package:quical/entity/state_entity.dart';
import 'package:quical/entity/user_entity.dart';

import 'api.dart';

class ApiService extends PsApi {
  ///
  /// App Info
  ///

  // Future<ApiResource<UserLoginEntity>> login(Map<dynamic, dynamic> jsonMap) async {
  //   return await postData<UserLoginEntity, UserLoginEntity>(UserLoginEntity(), ApiUrl.login, jsonMap, "dd");
  // }

// categories
  Future<ApiResource<List<CategoriesEntity>>> getCategories(String token) async {
    String url = ApiUrl.categories;
    return await getServerSession<CategoriesEntity, List<CategoriesEntity>>(CategoriesEntity(), url, token);
  }

  /// AddOns List
  Future<ApiResource<List<AddOnsEntity>>> getAddOnsList(String token) async {
    String url = ApiUrl.getAddOnsList;
    return await getServerSession<AddOnsEntity, List<AddOnsEntity>>(AddOnsEntity(), url, token);
  }

  Future<ApiResource<ApiStatusResponse>> createAddOns(Map<dynamic, dynamic> jsonMap, String apiSession) async {
    String url = ApiUrl.createAddOns;
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, jsonMap, apiSession);
  }

  Future<ApiResource<ApiStatusResponse>> editAddOns(String id, Map<dynamic, dynamic> jsonMap, String apiSession) async {
    String url = "${ApiUrl.editAddOns}/$id";
    return await putData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, jsonMap, apiSession);
  }

  Future<ApiResource<ApiStatusResponse>> deleteAddOns(String id, String apiSession) async {
    String url = "${ApiUrl.deleteAddOns}/$id";
    return await deleteData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, apiSession);
  }

  // Future<ApiResource<ApiStatusResponse>> deleteAddOns(
  //   String id, String apiSession) async {
  //    String url = "${ApiUrl.deleteAddOns}/$id";
  //    return await deleteData<ApiStatusResponse, ApiStatusResponse>(
  //       ApiStatusResponse(), url,  apiSession);
  // }

  /// Old Api Service
  Future<ApiResource<ApiStatusResponse>> register(Map<dynamic, dynamic> jsonMap) async {
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), ApiUrl.register, jsonMap, "");
  }

  Future<ApiResource<ApiStatusResponse>> verifySignUpAccount(Map<dynamic, dynamic> jsonMap) async {
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), ApiUrl.verifyAccount, jsonMap, "");
  }

  Future<ApiResource<List<StateEntity>>> getStates() async {
    String url = ApiUrl.getState;
    return await getServerCall<StateEntity, List<StateEntity>>(StateEntity(), url);
  }

  Future<ApiResource<List<CityEntity>>> getCities() async {
    String url = ApiUrl.getCity;
    return await getServerCall<CityEntity, List<CityEntity>>(CityEntity(), url);
  }

  Future<ApiResource<ApiStatusResponse>> resendOtp(Map<dynamic, dynamic> jsonMap) async {
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), ApiUrl.resendOtp, jsonMap, "");
  }

  Future<ApiResource<ApiStatusResponse>> resetAccount(Map<dynamic, dynamic> jsonMap) async {
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), ApiUrl.resetAccount, jsonMap, "");
  }

  Future<ApiResource<ApiStatusResponse>> changePassword(Map<dynamic, dynamic> jsonMap) async {
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), ApiUrl.changePassword, jsonMap, "");
  }

  // Future<ApiResource<List<OrderTransactionAddOnsEntity>>> getOrderPageByID(String token, String id) async {
  //   String url = "${ApiUrl.getOrderPageByID}/$id";
  //   return await getServerSession<OrderTransactionAddOnsEntity, List<OrderTransactionAddOnsEntity>>(OrderTransactionAddOnsEntity(), url, token);
  // }

  // Future<ApiResource<List<OrderEntity>>> getOrderPage(String token) async {
  //   String url = ApiUrl.getOrderPage;
  //   return await getServerSession<OrderEntity, List<OrderEntity>>(OrderEntity(), url, token);
  // }

  Future<ApiResource<ApiStatusResponse>> acceptOrder(jsonMap, String apiSession) async {
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), ApiUrl.acceptOrder, jsonMap, apiSession);
  }

  Future<ApiResource<ApiStatusResponse>> declineOrder(jsonMap, String apiSession) async {
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), ApiUrl.declineOrder, jsonMap, apiSession);
  }

  Future<ApiResource<List<CountryEntity>>> getCountries() async {
    String url = ApiUrl.getCountry;
    return await getServerCall<CountryEntity, List<CountryEntity>>(CountryEntity(), url);
  }

  Future<ApiResource<UserEntity>> getUser(String apiSession) async {
    String url = ApiUrl.getProfile;
    return await getServerSession<UserEntity, UserEntity>(UserEntity(), url, apiSession);
  }

  Future<ApiResource<ApiStatusResponse>> updateUser(Map<dynamic, dynamic> jsonMap, String apiSession) async {
    return await putData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), ApiUrl.updateProfile, jsonMap, apiSession);
  }

  Future<ApiResource<ApiStatusResponse>> changePasswordAuth(Map<dynamic, dynamic> jsonMap, String apiSession) async {
    String url = ApiUrl.updatePassword;
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, jsonMap, apiSession);
  }

  Future<ApiResource<ApiStatusResponse>> uploadImage(Map<dynamic, dynamic> jsonMap, String apiSession) async {
    String url = ApiUrl.uploadImage;
    return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, jsonMap, apiSession);
  }

  // Future<ApiResource<ServiceHourEntity>> getServiceHour(String apiSession) async {
  //   String url = ApiUrl.serviceHour;
  //   return await getServerSession<ServiceHourEntity, ServiceHourEntity>(ServiceHourEntity(), url, apiSession);
  // }


  ///######################################### Coupon #########################################
  // Future<ApiResource<List<CouponEntity>>> getCouponList(String token) async {
  //   String url = ApiUrl.getCoupon;
  //   return await getServerSession<CouponEntity, List<CouponEntity>>(CouponEntity(), url, token);
  // }
  // //post coupon
  // Future<ApiResource<ApiStatusResponse>> addCoupon(Map<dynamic, dynamic> jsonMap, String apiSession) async {
  //   String url = ApiUrl.postCoupon;
  //   return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, jsonMap, apiSession);
  // }

  // Future<ApiResource<ApiStatusResponse>> updateCoupon(Map<dynamic, dynamic> jsonMap, String apiSession) async {
  //   String url = '${ApiUrl.updateCoupon}/${jsonMap['id']}';
  //   return await putData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, jsonMap, apiSession);
  // }

  // Future<ApiResource<ApiStatusResponse>> deleteCoupon(String id,String apiSession) async {
  //   String url = '${ApiUrl.deleteCoupon}/$id';
  //   return await deleteData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, apiSession);
  // }

  // Future<ApiResource<ApiStatusResponse>> updateEstablishment(Map<dynamic, dynamic> jsonMap, String apiSession) async {
  //   String url = ApiUrl.updateEstablishment;
  //   return await postData<ApiStatusResponse, ApiStatusResponse>(ApiStatusResponse(), url, jsonMap, apiSession);
  // }
}