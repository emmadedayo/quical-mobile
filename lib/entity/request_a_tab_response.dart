// To parse this JSON data, do
//
//     final requestATabResponse = requestATabResponseFromJson(jsonString);

import 'dart:convert';

RequestATabResponse requestATabResponseFromJson(String str) =>
    RequestATabResponse.fromJson(json.decode(str));

String requestATabResponseToJson(RequestATabResponse data) =>
    json.encode(data.toJson());

class RequestATabResponse {
  int? statusCode;
  bool? success;
  String? message;
  List<RequestATab>? data;

  RequestATabResponse({
    this.statusCode,
    this.success,
    this.message,
    this.data,
  });

  factory RequestATabResponse.fromJson(Map<String, dynamic> json) =>
      RequestATabResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<RequestATab>.from(
                json["data"]!.map((x) => RequestATab.fromJson(x))),
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

class RequestATab {
  int? id;
  int? vendorId;
  int? establishmentId;
  int? countryId;
  int? stateId;
  int? cityId;
  String? address;
  int? quantity;
  String? transactionId;
  String? paymentMethod;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  RequestATab({
    this.id,
    this.vendorId,
    this.establishmentId,
    this.countryId,
    this.stateId,
    this.cityId,
    this.address,
    this.quantity,
    this.transactionId,
    this.paymentMethod,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory RequestATab.fromJson(Map<String, dynamic> json) => RequestATab(
        id: json["id"],
        vendorId: json["vendor_id"],
        establishmentId: json["establishment_id"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        cityId: json["city_id"],
        address: json["address"],
        quantity: json["quantity"],
        transactionId: json["transaction_id"],
        paymentMethod: json["payment_method"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vendor_id": vendorId,
        "establishment_id": establishmentId,
        "country_id": countryId,
        "state_id": stateId,
        "city_id": cityId,
        "address": address,
        "quantity": quantity,
        "transaction_id": transactionId,
        "payment_method": paymentMethod,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
