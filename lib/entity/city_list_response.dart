// To parse this JSON data, do
//
//     final cityResponse = cityResponseFromJson(jsonString);

import 'dart:convert';

CityResponse cityResponseFromJson(String str) => CityResponse.fromJson(json.decode(str));

String cityResponseToJson(CityResponse data) => json.encode(data.toJson());

class CityResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<City>? data;

    CityResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory CityResponse.fromJson(Map<String, dynamic> json) => CityResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<City>.from(json["data"]!.map((x) => City.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class City {
    int? id;
    String? cityName;
    DateTime? createdAt;
    DateTime? updatedAt;

    City({
        this.id,
        this.cityName,
        this.createdAt,
        this.updatedAt,
    });

    factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        cityName: json["city_name"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "city_name": cityName,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
