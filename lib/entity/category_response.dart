// To parse this JSON data, do
//
//     final categoryResponse = categoryResponseFromJson(jsonString);

import 'dart:convert';

CategoryResponse categoryResponseFromJson(String str) => CategoryResponse.fromJson(json.decode(str));

String categoryResponseToJson(CategoryResponse data) => json.encode(data.toJson());

class CategoryResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<Categori>? data;

    CategoryResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory CategoryResponse.fromJson(Map<String, dynamic> json) => CategoryResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Categori>.from(json["data"]!.map((x) => Categori.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Categori {
    int? id;
    String? name;
    String? image;
    bool? status;
    String? slug;
    DateTime? createdAt;
    dynamic updatedAt;

    Categori({
        this.id,
        this.name,
        this.image,
        this.status,
        this.slug,
        this.createdAt,
        this.updatedAt,
    });

    factory Categori.fromJson(Map<String, dynamic> json) => Categori(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        status: json["status"],
        slug: json["slug"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "status": status,
        "slug": slug,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt,
    };
}
