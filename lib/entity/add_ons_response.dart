// To parse this JSON data, do
//
//     final addonsResponse = addonsResponseFromJson(jsonString);

import 'dart:convert';

AddonsResponse addonsResponseFromJson(String str) => AddonsResponse.fromJson(json.decode(str));

String addonsResponseToJson(AddonsResponse data) => json.encode(data.toJson());

class AddonsResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<Addons>? data;

    AddonsResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory AddonsResponse.fromJson(Map<String, dynamic> json) => AddonsResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Addons>.from(json["data"]!.map((x) => Addons.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Addons {
    int? id;
    String? altId;
    String? addonName;
    String? addonPrice;
    int? establishmentId;
    bool? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    bool? isDeleted;

    Addons({
        this.id,
        this.altId,
        this.addonName,
        this.addonPrice,
        this.establishmentId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.isDeleted,
    });

    factory Addons.fromJson(Map<String, dynamic> json) => Addons(
        id: json["id"],
        altId: json["alt_id"],
        addonName: json["addon_name"],
        addonPrice: json["addon_price"],
        establishmentId: json["establishment_id"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        isDeleted: json["is_deleted"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "alt_id": altId,
        "addon_name": addonName,
        "addon_price": addonPrice,
        "establishment_id": establishmentId,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "is_deleted": isDeleted,
    };
}
