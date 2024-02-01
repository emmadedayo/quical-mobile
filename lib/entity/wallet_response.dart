// To parse this JSON data, do
//
//     final walletResponse = walletResponseFromJson(jsonString);

import 'dart:convert';

WalletResponse walletResponseFromJson(String str) =>
    WalletResponse.fromJson(json.decode(str));

String walletResponseToJson(WalletResponse data) => json.encode(data.toJson());

class WalletResponse {
  int? statusCode;
  bool? success;
  String? message;
  WalletData? data;

  WalletResponse({
    this.statusCode,
    this.success,
    this.message,
    this.data,
  });

  factory WalletResponse.fromJson(Map<String, dynamic> json) => WalletResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : WalletData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data?.toJson(),
      };
}

class WalletData {
  Wallet? wallet;
  List<dynamic>? walletTransactions;

  WalletData({
    this.wallet,
    this.walletTransactions,
  });

  factory WalletData.fromJson(Map<String, dynamic> json) => WalletData(
        wallet: json["wallet"] == null ? null : Wallet.fromJson(json["wallet"]),
        walletTransactions: json["wallet_transactions"] == null
            ? []
            : List<dynamic>.from(json["wallet_transactions"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "wallet": wallet?.toJson(),
        "wallet_transactions": walletTransactions == null
            ? []
            : List<dynamic>.from(walletTransactions!.map((x) => x)),
      };
}

class Wallet {
  int? id;
  int? vendorId;
  String? totalEarning;
  String? totalWithdrawn;
  String? pendingWithdraw;
  String? collectedCash;
  DateTime? createdAt;
  DateTime? updatedAt;

  Wallet({
    this.id,
    this.vendorId,
    this.totalEarning,
    this.totalWithdrawn,
    this.pendingWithdraw,
    this.collectedCash,
    this.createdAt,
    this.updatedAt,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
        id: json["id"],
        vendorId: json["vendor_id"],
        totalEarning: json["total_earning"],
        totalWithdrawn: json["total_withdrawn"],
        pendingWithdraw: json["pending_withdraw"],
        collectedCash: json["collected_cash"],
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
        "total_earning": totalEarning,
        "total_withdrawn": totalWithdrawn,
        "pending_withdraw": pendingWithdraw,
        "collected_cash": collectedCash,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
