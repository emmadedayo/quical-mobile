// To parse this JSON data, do
//
//     final couponResponse = couponResponseFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

CouponResponse couponResponseFromJson(String str) => CouponResponse.fromJson(json.decode(str));

String couponResponseToJson(CouponResponse data) => json.encode(data.toJson());

class CouponResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<Coupon>? data;

    CouponResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory CouponResponse.fromJson(Map<String, dynamic> json) => CouponResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Coupon>.from(json["data"]!.map((x) => Coupon.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Coupon {
    int? id;
    String? altId;
    String? title;
    String? code;
    DateTime? startDate;
    DateTime? expireDate;
    String? minPurchase;
    String? maxDiscount;
    String? discount;
    String? discountType;
    String? couponType;
    int? limit;
    bool? status;
    Data? data;
    int? totalUses;
    CreatedBy? createdBy;
    String? userId;
    String? slug;
    int? establishmentId;
    DateTime? createdAt;
    DateTime? updatedAt;

    Coupon({
        this.id,
        this.altId,
        this.title,
        this.code,
        this.startDate,
        this.expireDate,
        this.minPurchase,
        this.maxDiscount,
        this.discount,
        this.discountType,
        this.couponType,
        this.limit,
        this.status,
        this.data,
        this.totalUses,
        this.createdBy,
        this.userId,
        this.slug,
        this.establishmentId,
        this.createdAt,
        this.updatedAt,
    });

    factory Coupon.fromJson(Map<String, dynamic> json) => Coupon(
        id: json["id"],
        altId: json["alt_id"],
        title: json["title"],
        code: json["code"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        expireDate: json["expire_date"] == null ? null : DateTime.parse(json["expire_date"]),
        minPurchase: json["min_purchase"],
        maxDiscount: json["max_discount"],
        discount: json["discount"],
        discountType: json["discount_type"]!,
        couponType: json["coupon_type"],
        limit: json["limit"],
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        totalUses: json["total_uses"],
        createdBy: createdByValues.map[json["created_by"]]!,
        userId: json["user_id"],
        slug: json["slug"],
        establishmentId: json["establishment_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "alt_id": altId,
        "title": title,
        "code": code,
        "start_date": startDate?.toIso8601String(),
        "expire_date": expireDate?.toIso8601String(),
        "min_purchase": minPurchase,
        "max_discount": maxDiscount,
        "discount": discount,
        "discount_type": discountTypeValues.reverse[discountType],
        "coupon_type": couponType,
        "limit": limit,
        "status": status,
        "data": data?.toJson(),
        "total_uses": totalUses,
        "created_by": createdByValues.reverse[createdBy],
        "user_id": userId,
        "slug": slug,
        "establishment_id": establishmentId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

enum CreatedBy {
    ADMIN
}

final createdByValues = EnumValues({
    "admin": CreatedBy.ADMIN
});

class Data {
    int? establishmentId;
    int? userId;

    Data({
        this.establishmentId,
        this.userId,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        establishmentId: json["establishment_id"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "establishment_id": establishmentId,
        "user_id": userId,
    };
}

enum DiscountType {
    AMOUNT,
    PERCENTAGE
}

final discountTypeValues = EnumValues({
    "AMOUNT": DiscountType.AMOUNT,
    "PERCENTAGE": DiscountType.PERCENTAGE
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}

