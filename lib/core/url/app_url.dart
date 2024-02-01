import 'package:quical/utilities/utils.dart';

class ApiUrl {
  ApiUrl._();

  ///
  /// APIs Url
  ///
  static String login = '${Utils.getAppUrl()}/api/v1/vendor/auth/login';

  // catgories
  static String categories = '${Utils.getAppUrl()}/api/v1/vendor/mics/category';

  /// addons
  static String getAddOnsList =
      '${Utils.getAppUrl()}/api/v1/vendor/addons/all_addons';
  static String createAddOns =
      '${Utils.getAppUrl()}/api/v1/vendor/addons/create-addons';
  static String editAddOns =
      '${Utils.getAppUrl()}/api/v1/vendor/addons/update-addons';
  static String deleteAddOns =
      '${Utils.getAppUrl()}/api/v1/vendor/addons/delete-addons';

  /// Profile
  static String getProfile = '${Utils.getAppUrl()}/api/v1/vendor/profile';
  static String updateProfile =
      '${Utils.getAppUrl()}/api/v1/vendor/profile-update';
  static String updatePassword =
      '${Utils.getAppUrl()}/api/v1/vendor/update-password';

  static String uploadImage =
      '${Utils.getAppUrl()}/api/user/profile/updateImage';

  ///Old Endpoints
  static String register = '${Utils.getAppUrl()}/api/auth/restaurant/signup';
  static String verifyAccount =
      '${Utils.getAppUrl()}/api/auth/restaurant/verify_account';
  static String getCity = '${Utils.getAppUrl()}/api/auth/get_city/306';
  static String getState = '${Utils.getAppUrl()}/api/auth/get_states/161';
  static String getCountry = '${Utils.getAppUrl()}/api/auth/get_countries';

  //  User
  static String resendOtp = '${Utils.getAppUrl()}/api/auth/resend-otp';
  static String resetAccount = '${Utils.getAppUrl()}/api/auth/check_email';

  static String changePassword =
      '${Utils.getAppUrl()}/api/auth/change-password';

  // Service Page
  static String serviceHour =
      '${Utils.getAppUrl()}/api/service/restaurant/get_service_hours';

  // Order page
  static String getOrderPageByID =
      '${Utils.getAppUrl()}/api/order/restaurant/get-user-order/60205924868';
  static String getOrderPage =
      '${Utils.getAppUrl()}/api/order/restaurant/get-user-order';
  static String acceptOrder =
      '${Utils.getAppUrl()}/api/order/restaurant/accept-order/60205924868';
  static String declineOrder =
      '${Utils.getAppUrl()}/api/order/restaurant/decline-order/60205924868';

  ///######################################### Coupon #########################################
  static String getCoupon = '${Utils.getAppUrl()}/api/v1/coupon/coupon';
  static String postCoupon = '${Utils.getAppUrl()}/api/v1/coupon/create-coupon';
  static String updateCoupon =
      '${Utils.getAppUrl()}/api/v1/coupon/update-coupon';
  static String deleteCoupon =
      '${Utils.getAppUrl()}/api/v1/coupon/delete-coupon';

  ///######################################### Establishment #########################################
  static String updateEstablishment =
      '${Utils.getAppUrl()}/api/v1/vendor/update-establishment';

  //#########################################  Items #######################################
  static String getItems = '/api/v1/vendor/items/items';
}