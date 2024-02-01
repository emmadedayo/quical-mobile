// To parse this JSON data, do
//
//     final stateResponse = stateResponseFromJson(jsonString);

import 'dart:convert';

StateResponse stateResponseFromJson(String str) => StateResponse.fromJson(json.decode(str));

String stateResponseToJson(StateResponse data) => json.encode(data.toJson());

class StateResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<States>? data;

    StateResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory StateResponse.fromJson(Map<String, dynamic> json) => StateResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<States>.from(json["data"]!.map((x) => States.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class States {
    int? id;
    int? countryId;
    String? stateName;
    int? operating;
    DateTime? createdAt;
    dynamic updatedAt;

    States({
        this.id,
        this.countryId,
        this.stateName,
        this.operating,
        this.createdAt,
        this.updatedAt,
    });

    factory States.fromJson(Map<String, dynamic> json) => States(
        id: json["id"],
        countryId: json["country_id"],
        stateName: json["state_name"],
        operating: json["operating"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "country_id": countryId,
        "state_name": stateName,
        "operating": operating,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt,
    };
}
