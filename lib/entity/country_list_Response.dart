// To parse this JSON data, do
//
//     final countryResponse = countryResponseFromJson(jsonString);

import 'dart:convert';

CountryResponse countryResponseFromJson(String str) =>
    CountryResponse.fromJson(json.decode(str));

String countryResponseToJson(CountryResponse data) =>
    json.encode(data.toJson());

class CountryResponse {
  int? statusCode;
  bool? success;
  String? message;
  List<Country>? data;

  CountryResponse({
    this.statusCode,
    this.success,
    this.message,
    this.data,
  });

  factory CountryResponse.fromJson(Map<String, dynamic> json) =>
      CountryResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Country>.from(json["data"]!.map((x) => Country.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
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
