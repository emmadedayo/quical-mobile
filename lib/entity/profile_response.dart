// To parse this JSON data, do
//
//     final profileResponse = profileResponseFromJson(jsonString);

import 'dart:convert';

ProfileResponse profileResponseFromJson(String str) =>
    ProfileResponse.fromJson(json.decode(str));

String profileResponseToJson(ProfileResponse data) =>
    json.encode(data.toJson());

class ProfileResponse {
  int? statusCode;
  bool? success;
  String? message;
  Data? data;

  ProfileResponse({
    this.statusCode,
    this.success,
    this.message,
    this.data,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      ProfileResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  int? id;
  String? firstName;
  String? lastName;
  int? phone;
  String? email;
  dynamic emailVerifiedAt;
  dynamic image;
  bool? status;
  String? deviceToken;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic phoneVerifiedAt;
  String? accountStatus;
  int? countryId;
  int? zoneId;
  int? stateId;
  dynamic cityId;
  dynamic roleId;
  String? type;
  dynamic createdBy;
  dynamic vendorId;
  Country? country;
  Establishment? establishment;

  Data({
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
    this.cityId,
    this.roleId,
    this.type,
    this.createdBy,
    this.vendorId,
    this.country,
    this.establishment,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        phone: json["phone"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        image: json["image"],
        status: json["status"],
        deviceToken: json["device_token"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        phoneVerifiedAt: json["phone_verified_at"],
        accountStatus: json["account_status"],
        countryId: json["country_id"],
        zoneId: json["zone_id"],
        stateId: json["state_id"],
        cityId: json["city_id"],
        roleId: json["role_id"],
        type: json["type"],
        createdBy: json["created_by"],
        vendorId: json["vendor_id"],
        country:
            json["country"] == null ? null : Country.fromJson(json["country"]),
        establishment: json["establishment"] == null
            ? null
            : Establishment.fromJson(json["establishment"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "phone": phone,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "image": image,
        "status": status,
        "device_token": deviceToken,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "phone_verified_at": phoneVerifiedAt,
        "account_status": accountStatus,
        "country_id": countryId,
        "zone_id": zoneId,
        "state_id": stateId,
        "city_id": cityId,
        "role_id": roleId,
        "type": type,
        "created_by": createdBy,
        "vendor_id": vendorId,
        "country": country?.toJson(),
        "establishment": establishment?.toJson(),
      };
}

class Country {
  int? id;
  String? countryName;
  String? countryPhoneCode;
  String? countryCurrency;
  String? countryCurrencySymbol;
  int? operating;
  DateTime? createdAt;
  dynamic updatedAt;

  Country({
    this.id,
    this.countryName,
    this.countryPhoneCode,
    this.countryCurrency,
    this.countryCurrencySymbol,
    this.operating,
    this.createdAt,
    this.updatedAt,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        countryName: json["country_name"],
        countryPhoneCode: json["country_phone_code"],
        countryCurrency: json["country_currency"],
        countryCurrencySymbol: json["country_currency_symbol"],
        operating: json["operating"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "country_name": countryName,
        "country_phone_code": countryPhoneCode,
        "country_currency": countryCurrency,
        "country_currency_symbol": countryCurrencySymbol,
        "operating": operating,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt,
      };
}

class Establishment {
  int? id;
  String? name;
  String? phone;
  String? email;
  String? logo;
  double? latitude;
  double? longitude;
  String? address;
  String? minimumOrder;
  dynamic commission;
  bool? scheduleOrder;
  String? openingTime;
  bool? isOpen;
  String? closingTime;
  bool? status;
  int? vendorId;
  bool? freeDelivery;
  String? coverPhoto;
  bool? delivery;
  bool? takeAway;
  bool? foodSection;
  String? tax;
  int? zoneId;
  bool? active;
  String? offDay;
  Gst? gst;
  bool? selfDeliverySystem;
  String? minimumShippingCharge;
  String? deliveryTime;
  int? orderCount;
  int? totalOrder;
  String? kmShippingCharges;
  String? establishmentId;
  String? maximumShippingCharge;
  String? slug;
  bool? orderSubscriptionActive;
  String? establishmentType;
  String? deliveryCharge;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deleteAt;
  String? altId;
  int? countryId;
  int? stateId;
  dynamic certificate;
  dynamic cityId;
  List<dynamic>? reviews;

  Establishment({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.logo,
    this.latitude,
    this.longitude,
    this.address,
    this.minimumOrder,
    this.commission,
    this.scheduleOrder,
    this.openingTime,
    this.isOpen,
    this.closingTime,
    this.status,
    this.vendorId,
    this.freeDelivery,
    this.coverPhoto,
    this.delivery,
    this.takeAway,
    this.foodSection,
    this.tax,
    this.zoneId,
    this.active,
    this.offDay,
    this.gst,
    this.selfDeliverySystem,
    this.minimumShippingCharge,
    this.deliveryTime,
    this.orderCount,
    this.totalOrder,
    this.kmShippingCharges,
    this.establishmentId,
    this.maximumShippingCharge,
    this.slug,
    this.orderSubscriptionActive,
    this.establishmentType,
    this.deliveryCharge,
    this.createdAt,
    this.updatedAt,
    this.deleteAt,
    this.altId,
    this.countryId,
    this.stateId,
    this.certificate,
    this.cityId,
    this.reviews,
  });

  factory Establishment.fromJson(Map<String, dynamic> json) => Establishment(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        logo: json["logo"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        address: json["address"],
        minimumOrder: json["minimum_order"],
        commission: json["commission"],
        scheduleOrder: json["schedule_order"],
        openingTime: json["opening_time"],
        isOpen: json["is_open"],
        closingTime: json["closing_time"],
        status: json["status"],
        vendorId: json["vendor_id"],
        freeDelivery: json["free_delivery"],
        coverPhoto: json["cover_photo"],
        delivery: json["delivery"],
        takeAway: json["take_away"],
        foodSection: json["food_section"],
        tax: json["tax"],
        zoneId: json["zone_id"],
        active: json["active"],
        offDay: json["off_day"],
        gst: json["gst"] == null ? null : Gst.fromJson(json["gst"]),
        selfDeliverySystem: json["self_delivery_system"],
        minimumShippingCharge: json["minimum_shipping_charge"],
        deliveryTime: json["delivery_time"],
        orderCount: json["order_count"],
        totalOrder: json["total_order"],
        kmShippingCharges: json["km_shipping_charges"],
        establishmentId: json["establishment_id"],
        maximumShippingCharge: json["maximum_shipping_charge"],
        slug: json["slug"],
        orderSubscriptionActive: json["order_subscription_active"],
        establishmentType: json["establishment_type"],
        deliveryCharge: json["delivery_charge"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deleteAt: json["delete_at"],
        altId: json["alt_id"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        certificate: json["certificate"],
        cityId: json["city_id"],
        reviews: json["reviews"] == null
            ? []
            : List<dynamic>.from(json["reviews"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "logo": logo,
        "latitude": latitude,
        "longitude": longitude,
        "address": address,
        "minimum_order": minimumOrder,
        "commission": commission,
        "schedule_order": scheduleOrder,
        "opening_time": openingTime,
        "is_open": isOpen,
        "closing_time": closingTime,
        "status": status,
        "vendor_id": vendorId,
        "free_delivery": freeDelivery,
        "cover_photo": coverPhoto,
        "delivery": delivery,
        "take_away": takeAway,
        "food_section": foodSection,
        "tax": tax,
        "zone_id": zoneId,
        "active": active,
        "off_day": offDay,
        "gst": gst?.toJson(),
        "self_delivery_system": selfDeliverySystem,
        "minimum_shipping_charge": minimumShippingCharge,
        "delivery_time": deliveryTime,
        "order_count": orderCount,
        "total_order": totalOrder,
        "km_shipping_charges": kmShippingCharges,
        "establishment_id": establishmentId,
        "maximum_shipping_charge": maximumShippingCharge,
        "slug": slug,
        "order_subscription_active": orderSubscriptionActive,
        "establishment_type": establishmentType,
        "delivery_charge": deliveryCharge,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "delete_at": deleteAt,
        "alt_id": altId,
        "country_id": countryId,
        "state_id": stateId,
        "certificate": certificate,
        "city_id": cityId,
        "reviews":
            reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
      };
}

class Gst {
  String? status;
  dynamic code;

  Gst({
    this.status,
    this.code,
  });

  factory Gst.fromJson(Map<String, dynamic> json) => Gst(
        status: json["status"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
      };
}
