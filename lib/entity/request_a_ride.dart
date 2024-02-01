// To parse this JSON data, do
//
//     final requestARideResponse = requestARideResponseFromJson(jsonString);

import 'dart:convert';

RequestARideResponse requestARideResponseFromJson(String str) => RequestARideResponse.fromJson(json.decode(str));

String requestARideResponseToJson(RequestARideResponse data) => json.encode(data.toJson());

class RequestARideResponse {
    int? statusCode;
    bool? success;
    String? message;
    Data? data;

    RequestARideResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory RequestARideResponse.fromJson(Map<String, dynamic> json) => RequestARideResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    int? id;
    String? firstName;
    String? lastName;
    int? phone;
    String? email;
    dynamic emailVerifiedAt;
    dynamic phoneVerifiedAt;
    int? isPhoneVerified;
    int? isEmailVerified;
    String? image;
    String? deviceToken;
    int? status;
    int? active;
    String? type;
    String? applicationStatus;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? zoneId;
    String? vehicleType;
    int? countryId;
    int? state;
    int? city;
    int? driverId;
    dynamic driverSlug;
    DriverKyc? driverKyc;

    Data({
        this.id,
        this.firstName,
        this.lastName,
        this.phone,
        this.email,
        this.emailVerifiedAt,
        this.phoneVerifiedAt,
        this.isPhoneVerified,
        this.isEmailVerified,
        this.image,
        this.deviceToken,
        this.status,
        this.active,
        this.type,
        this.applicationStatus,
        this.createdAt,
        this.updatedAt,
        this.zoneId,
        this.vehicleType,
        this.countryId,
        this.state,
        this.city,
        this.driverId,
        this.driverSlug,
        this.driverKyc,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        phone: json["phone"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        phoneVerifiedAt: json["phone_verified_at"],
        isPhoneVerified: json["is_phone_verified"],
        isEmailVerified: json["is_email_verified"],
        image: json["image"],
        deviceToken: json["device_token"],
        status: json["status"],
        active: json["active"],
        type: json["type"],
        applicationStatus: json["application_status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        zoneId: json["zone_id"],
        vehicleType: json["vehicle_type"],
        countryId: json["country_id"],
        state: json["state"],
        city: json["city"],
        driverId: json["driver_id"],
        driverSlug: json["driver_slug"],
        driverKyc: json["driverKyc"] == null ? null : DriverKyc.fromJson(json["driverKyc"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "phone": phone,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "phone_verified_at": phoneVerifiedAt,
        "is_phone_verified": isPhoneVerified,
        "is_email_verified": isEmailVerified,
        "image": image,
        "device_token": deviceToken,
        "status": status,
        "active": active,
        "type": type,
        "application_status": applicationStatus,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "zone_id": zoneId,
        "vehicle_type": vehicleType,
        "country_id": countryId,
        "state": state,
        "city": city,
        "driver_id": driverId,
        "driver_slug": driverSlug,
        "driverKyc": driverKyc?.toJson(),
    };
}

class DriverKyc {
    int? id;
    int? driverId;
    String? vehicleType;
    int? vehicleBrandId;
    int? vehicleModelId;
    OtherVehicleDetails? otherVehicleDetails;
    VehicleImage? vehicleImage;
    DateTime? createdAt;
    DateTime? updatedAt;
    Personal? personal;
    VehicleBrand? vehicleBrand;
    VehicleModel? vehicleModel;

    DriverKyc({
        this.id,
        this.driverId,
        this.vehicleType,
        this.vehicleBrandId,
        this.vehicleModelId,
        this.otherVehicleDetails,
        this.vehicleImage,
        this.createdAt,
        this.updatedAt,
        this.personal,
        this.vehicleBrand,
        this.vehicleModel,
    });

    factory DriverKyc.fromJson(Map<String, dynamic> json) => DriverKyc(
        id: json["id"],
        driverId: json["driver_id"],
        vehicleType: json["vehicle_type"],
        vehicleBrandId: json["vehicle_brand_id"],
        vehicleModelId: json["vehicle_model_id"],
        otherVehicleDetails: json["other_vehicle_details"] == null ? null : OtherVehicleDetails.fromJson(json["other_vehicle_details"]),
        vehicleImage: json["vehicle_image"] == null ? null : VehicleImage.fromJson(json["vehicle_image"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        personal: json["personal"] == null ? null : Personal.fromJson(json["personal"]),
        vehicleBrand: json["vehicleBrand"] == null ? null : VehicleBrand.fromJson(json["vehicleBrand"]),
        vehicleModel: json["vehicleModel"] == null ? null : VehicleModel.fromJson(json["vehicleModel"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "driver_id": driverId,
        "vehicle_type": vehicleType,
        "vehicle_brand_id": vehicleBrandId,
        "vehicle_model_id": vehicleModelId,
        "other_vehicle_details": otherVehicleDetails?.toJson(),
        "vehicle_image": vehicleImage?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "personal": personal?.toJson(),
        "vehicleBrand": vehicleBrand?.toJson(),
        "vehicleModel": vehicleModel?.toJson(),
    };
}

class OtherVehicleDetails {
    String? dob;
    String? occupation;
    String? previousWork;
    String? hoursPerDay;
    String? howLongWithTouramp;
    int? countryId;
    int? stateId;
    String? outrightOwnerOfVehicle;

    OtherVehicleDetails({
        this.dob,
        this.occupation,
        this.previousWork,
        this.hoursPerDay,
        this.howLongWithTouramp,
        this.countryId,
        this.stateId,
        this.outrightOwnerOfVehicle,
    });

    factory OtherVehicleDetails.fromJson(Map<String, dynamic> json) => OtherVehicleDetails(
        dob: json["dob"],
        occupation: json["occupation"],
        previousWork: json["previous_work"],
        hoursPerDay: json["hours_per_day"],
        howLongWithTouramp: json["how_long_with_touramp"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        outrightOwnerOfVehicle: json["outright_owner_of_vehicle"],
    );

    Map<String, dynamic> toJson() => {
        "dob": dob,
        "occupation": occupation,
        "previous_work": previousWork,
        "hours_per_day": hoursPerDay,
        "how_long_with_touramp": howLongWithTouramp,
        "country_id": countryId,
        "state_id": stateId,
        "outright_owner_of_vehicle": outrightOwnerOfVehicle,
    };
}

class Personal {
    String? identificationType;
    String? identificationFrontImage;
    String? identificationBackImage;
    String? ssnNinNumber;
    String? profileImage;

    Personal({
        this.identificationType,
        this.identificationFrontImage,
        this.identificationBackImage,
        this.ssnNinNumber,
        this.profileImage,
    });

    factory Personal.fromJson(Map<String, dynamic> json) => Personal(
        identificationType: json["identification_type"],
        identificationFrontImage: json["identification_front_image"],
        identificationBackImage: json["identification_back_image"],
        ssnNinNumber: json["ssn_nin_number"],
        profileImage: json["profile_image"],
    );

    Map<String, dynamic> toJson() => {
        "identification_type": identificationType,
        "identification_front_image": identificationFrontImage,
        "identification_back_image": identificationBackImage,
        "ssn_nin_number": ssnNinNumber,
        "profile_image": profileImage,
    };
}

class VehicleBrand {
    int? id;
    String? brand;
    DateTime? createdAt;
    dynamic updatedAt;

    VehicleBrand({
        this.id,
        this.brand,
        this.createdAt,
        this.updatedAt,
    });

    factory VehicleBrand.fromJson(Map<String, dynamic> json) => VehicleBrand(
        id: json["id"],
        brand: json["brand"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt,
    };
}

class VehicleImage {
    String? vehicleColor;
    String? vehiclePlateNumber;
    String? vehicleYear;
    String? vehicleFrontImage;
    String? vehicleBackImage;
    String? vehicleLeftImage;
    String? vehicleRightImage;
    String? vehicleProofOfOwnership;
    String? vehicleInsurance;

    VehicleImage({
        this.vehicleColor,
        this.vehiclePlateNumber,
        this.vehicleYear,
        this.vehicleFrontImage,
        this.vehicleBackImage,
        this.vehicleLeftImage,
        this.vehicleRightImage,
        this.vehicleProofOfOwnership,
        this.vehicleInsurance,
    });

    factory VehicleImage.fromJson(Map<String, dynamic> json) => VehicleImage(
        vehicleColor: json["vehicle_color"],
        vehiclePlateNumber: json["vehicle_plate_number"],
        vehicleYear: json["vehicle_year"],
        vehicleFrontImage: json["vehicle_front_image"],
        vehicleBackImage: json["vehicle_back_image"],
        vehicleLeftImage: json["vehicle_left_image"],
        vehicleRightImage: json["vehicle_right_image"],
        vehicleProofOfOwnership: json["vehicle_proof_of_ownership"],
        vehicleInsurance: json["vehicle_insurance"],
    );

    Map<String, dynamic> toJson() => {
        "vehicle_color": vehicleColor,
        "vehicle_plate_number": vehiclePlateNumber,
        "vehicle_year": vehicleYear,
        "vehicle_front_image": vehicleFrontImage,
        "vehicle_back_image": vehicleBackImage,
        "vehicle_left_image": vehicleLeftImage,
        "vehicle_right_image": vehicleRightImage,
        "vehicle_proof_of_ownership": vehicleProofOfOwnership,
        "vehicle_insurance": vehicleInsurance,
    };
}

class VehicleModel {
    int? id;
    int? vehicleBrandId;
    String? model;
    DateTime? createdAt;
    dynamic updatedAt;

    VehicleModel({
        this.id,
        this.vehicleBrandId,
        this.model,
        this.createdAt,
        this.updatedAt,
    });

    factory VehicleModel.fromJson(Map<String, dynamic> json) => VehicleModel(
        id: json["id"],
        vehicleBrandId: json["vehicle_brand_id"],
        model: json["model"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "vehicle_brand_id": vehicleBrandId,
        "model": model,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt,
    };
}
