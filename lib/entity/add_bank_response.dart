// To parse this JSON data, do
//
//     final addBankResponse = addBankResponseFromJson(jsonString);

import 'dart:convert';

AddBankResponse addBankResponseFromJson(String str) => AddBankResponse.fromJson(json.decode(str));

String addBankResponseToJson(AddBankResponse data) => json.encode(data.toJson());

class AddBankResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<Bank>? data;

    AddBankResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory AddBankResponse.fromJson(Map<String, dynamic> json) => AddBankResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Bank>.from(json["data"]!.map((x) => Bank.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Bank {
    int? id;
    int? vendorId;
    String? bankUuid;
    int? isDeleted;
    BankInfo? bankInfo;
    DateTime? createdAt;
    DateTime? updatedAt;

    Bank({
        this.id,
        this.vendorId,
        this.bankUuid,
        this.isDeleted,
        this.bankInfo,
        this.createdAt,
        this.updatedAt,
    });

    factory Bank.fromJson(Map<String, dynamic> json) => Bank(
        id: json["id"],
        vendorId: json["vendor_id"],
        bankUuid: json["bank_uuid"],
        isDeleted: json["is_deleted"],
        bankInfo: json["bank_info"] == null ? null : BankInfo.fromJson(json["bank_info"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "vendor_id": vendorId,
        "bank_uuid": bankUuid,
        "is_deleted": isDeleted,
        "bank_info": bankInfo?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class BankInfo {
    String? customerName;
    String? customerAccountNumber;
    String? customerBankId;
    String? customerBankName;
    String? customerAccountType;

    BankInfo({
        this.customerName,
        this.customerAccountNumber,
        this.customerBankId,
        this.customerBankName,
        this.customerAccountType,
    });

    factory BankInfo.fromJson(Map<String, dynamic> json) => BankInfo(
        customerName: json["customer_name"],
        customerAccountNumber: json["customer_account_number"],
        customerBankId: json["customer_bank_id"],
        customerBankName: json["customer_bank_name"],
        customerAccountType: json["customer_account_type"],
    );

    Map<String, dynamic> toJson() => {
        "customer_name": customerName,
        "customer_account_number": customerAccountNumber,
        "customer_bank_id": customerBankId,
        "customer_bank_name": customerBankName,
        "customer_account_type": customerAccountType,
    };
}
