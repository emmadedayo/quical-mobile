// To parse this JSON data, do
//
//     final withdrawerResponse = withdrawerResponseFromJson(jsonString);

import 'dart:convert';

WithdrawerResponse withdrawerResponseFromJson(String str) => WithdrawerResponse.fromJson(json.decode(str));

String withdrawerResponseToJson(WithdrawerResponse data) => json.encode(data.toJson());

class WithdrawerResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<WithDrawer>? data;

    WithdrawerResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory WithdrawerResponse.fromJson(Map<String, dynamic> json) => WithdrawerResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<WithDrawer>.from(json["data"]!.map((x) => WithDrawer.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class WithDrawer {
    int? id;
    int? vendorId;
    dynamic deliveryManId;
    String? transactionNote;
    String? amount;
    bool? approved;
    dynamic approvedBy;
    int? bankId;
    DateTime? createdAt;
    DateTime? updatedAt;
    Bank? bank;
    Vendor? vendor;

    WithDrawer({
        this.id,
        this.vendorId,
        this.deliveryManId,
        this.transactionNote,
        this.amount,
        this.approved,
        this.approvedBy,
        this.bankId,
        this.createdAt,
        this.updatedAt,
        this.bank,
        this.vendor,
    });

    factory WithDrawer.fromJson(Map<String, dynamic> json) => WithDrawer(
        id: json["id"],
        vendorId: json["vendor_id"],
        deliveryManId: json["delivery_man_id"],
        transactionNote: json["transaction_note"],
        amount: json["amount"],
        approved: json["approved"],
        approvedBy: json["approved_by"],
        bankId: json["bank_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        bank: json["bank"] == null ? null : Bank.fromJson(json["bank"]),
        vendor: json["vendor"] == null ? null : Vendor.fromJson(json["vendor"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "vendor_id": vendorId,
        "delivery_man_id": deliveryManId,
        "transaction_note": transactionNote,
        "amount": amount,
        "approved": approved,
        "approved_by": approvedBy,
        "bank_id": bankId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "bank": bank?.toJson(),
        "vendor": vendor?.toJson(),
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

class Vendor {
    int? id;
    String? firstName;
    String? lastName;
    int? phone;
    String? email;
    dynamic emailVerifiedAt;
    dynamic image;
    bool? status;
    dynamic deviceToken;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic phoneVerifiedAt;
    String? accountStatus;
    int? countryId;
    int? zoneId;
    int? stateId;
    int? cityId;
    int? roleId;
    String? type;
    dynamic createdBy;
    dynamic vendorId;

    Vendor({
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
    });

    factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        phone: json["phone"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        image: json["image"],
        status: json["status"],
        deviceToken: json["device_token"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
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
    };
}
