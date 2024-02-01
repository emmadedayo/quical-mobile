// To parse this JSON data, do
//
//     final updateResponse = updateResponseFromJson(jsonString);

import 'dart:convert';

UpdateResponse updateResponseFromJson(String str) => UpdateResponse.fromJson(json.decode(str));

String updateResponseToJson(UpdateResponse data) => json.encode(data.toJson());

class UpdateResponse {
    int? statusCode;
    bool? success;
    String? message;
    UpdateResponseData? data;

    UpdateResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory UpdateResponse.fromJson(Map<String, dynamic> json) => UpdateResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : UpdateResponseData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data?.toJson(),
    };
}

class UpdateResponseData {
    int? id;
    String? altId;
    String? title;
    String? code;
    DateTime? startDate;
    DateTime? expireDate;
    int? minPurchase;
    int? maxDiscount;
    int? discount;
    String? discountType;
    String? couponType;
    int? limit;
    bool? status;
    DataData? data;
    int? totalUses;
    String? createdBy;
    String? userId;
    String? slug;
    int? establishmentId;
    DateTime? createdAt;
    DateTime? updatedAt;

    UpdateResponseData({
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

    factory UpdateResponseData.fromJson(Map<String, dynamic> json) => UpdateResponseData(
        id: json["id"],
        altId: json["alt_id"],
        title: json["title"],
        code: json["code"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        expireDate: json["expire_date"] == null ? null : DateTime.parse(json["expire_date"]),
        minPurchase: json["min_purchase"],
        maxDiscount: json["max_discount"],
        discount: json["discount"],
        discountType: json["discount_type"],
        couponType: json["coupon_type"],
        limit: json["limit"],
        status: json["status"],
        data: json["data"] == null ? null : DataData.fromJson(json["data"]),
        totalUses: json["total_uses"],
        createdBy: json["created_by"],
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
        "discount_type": discountType,
        "coupon_type": couponType,
        "limit": limit,
        "status": status,
        "data": data?.toJson(),
        "total_uses": totalUses,
        "created_by": createdBy,
        "user_id": userId,
        "slug": slug,
        "establishment_id": establishmentId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class DataData {
    int? establishmentId;
    int? userId;

    DataData({
        this.establishmentId,
        this.userId,
    });

    factory DataData.fromJson(Map<String, dynamic> json) => DataData(
        establishmentId: json["establishment_id"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "establishment_id": establishmentId,
        "user_id": userId,
    };
}
