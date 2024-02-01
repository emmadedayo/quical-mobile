// ignore_for_file: file_names

import 'dart:convert';

AccountVerificationResultResponse accountVerificationResultResponseFromJson(
        String str) =>
    AccountVerificationResultResponse.fromJson(json.decode(str));

String accountVerificationResultResponseToJson(
        AccountVerificationResultResponse data) =>
    json.encode(data.toJson());

class AccountVerificationResultResponse {
  bool? status;
  String? message;
  Data? data;

  AccountVerificationResultResponse({
    this.status,
    this.message,
    this.data,
  });

  factory AccountVerificationResultResponse.fromJson(
          Map<String, dynamic> json) =>
      AccountVerificationResultResponse(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  String? accountNumber;
  String? accountName;

  Data({
    this.accountNumber,
    this.accountName,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        accountNumber: json["account_number"],
        accountName: json["account_name"],
      );

  Map<String, dynamic> toJson() => {
        "account_number": accountNumber,
        "account_name": accountName,
      };
}