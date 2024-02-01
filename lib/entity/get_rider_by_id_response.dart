// To parse this JSON data, do
//
//     final getRiderByIdResponse = getRiderByIdResponseFromJson(jsonString);

import 'dart:convert';

GetRiderByIdResponse getRiderByIdResponseFromJson(String str) => GetRiderByIdResponse.fromJson(json.decode(str));

String getRiderByIdResponseToJson(GetRiderByIdResponse data) => json.encode(data.toJson());

class GetRiderByIdResponse {
    int? statusCode;
    bool? success;
    String? message;
    Data? data;

    GetRiderByIdResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory GetRiderByIdResponse.fromJson(Map<String, dynamic> json) => GetRiderByIdResponse(
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
    int? userId;
    int? driverId;
    int? orderId;
    String? rideId;
    String? pickUpAddress;
    String? dropOffAddress;
    double? pickUpLatitude;
    double? pickUpLongitude;
    double? dropOffLatitude;
    double? dropOffLongitude;
    dynamic scheduleRideTime;
    String? rideType;
    bool? scheduleStartRide;
    bool? driverAcceptStatus;
    dynamic driverAcceptDatetime;
    bool? driverStartRide;
    dynamic driverStartRideTime;
    bool? completedStatus;
    dynamic completedStatusTime;
    int? km;
    String? paymentType;
    String? estimatedPrice;
    bool? onRide;
    dynamic cancelledBy;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic isDeleted;
    User? user;
    Driver? driver;
    RiderOrder? order;

    Data({
        this.id,
        this.userId,
        this.driverId,
        this.orderId,
        this.rideId,
        this.pickUpAddress,
        this.dropOffAddress,
        this.pickUpLatitude,
        this.pickUpLongitude,
        this.dropOffLatitude,
        this.dropOffLongitude,
        this.scheduleRideTime,
        this.rideType,
        this.scheduleStartRide,
        this.driverAcceptStatus,
        this.driverAcceptDatetime,
        this.driverStartRide,
        this.driverStartRideTime,
        this.completedStatus,
        this.completedStatusTime,
        this.km,
        this.paymentType,
        this.estimatedPrice,
        this.onRide,
        this.cancelledBy,
        this.createdAt,
        this.updatedAt,
        this.isDeleted,
        this.user,
        this.driver,
        this.order,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        userId: json["user_id"],
        driverId: json["driver_id"],
        orderId: json["order_id"],
        rideId: json["ride_id"],
        pickUpAddress: json["pick_up_address"],
        dropOffAddress: json["drop_off_address"],
        pickUpLatitude: json["pick_up_latitude"]?.toDouble(),
        pickUpLongitude: json["pick_up_longitude"]?.toDouble(),
        dropOffLatitude: json["drop_off_latitude"]?.toDouble(),
        dropOffLongitude: json["drop_off_longitude"]?.toDouble(),
        scheduleRideTime: json["schedule_ride_time"],
        rideType: json["ride_type"],
        scheduleStartRide: json["schedule_start_ride"],
        driverAcceptStatus: json["driver_accept_status"],
        driverAcceptDatetime: json["driver_accept_datetime"],
        driverStartRide: json["driver_start_ride"],
        driverStartRideTime: json["driver_start_ride_time"],
        completedStatus: json["completed_status"],
        completedStatusTime: json["completed_status_time"],
        km: json["km"],
        paymentType: json["payment_type"],
        estimatedPrice: json["estimated_price"],
        onRide: json["on_ride"],
        cancelledBy: json["cancelled_by"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        isDeleted: json["is_deleted"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        driver: json["driver"] == null ? null : Driver.fromJson(json["driver"]),
        order: json["order"] == null ? null : RiderOrder.fromJson(json["order"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "driver_id": driverId,
        "order_id": orderId,
        "ride_id": rideId,
        "pick_up_address": pickUpAddress,
        "drop_off_address": dropOffAddress,
        "pick_up_latitude": pickUpLatitude,
        "pick_up_longitude": pickUpLongitude,
        "drop_off_latitude": dropOffLatitude,
        "drop_off_longitude": dropOffLongitude,
        "schedule_ride_time": scheduleRideTime,
        "ride_type": rideType,
        "schedule_start_ride": scheduleStartRide,
        "driver_accept_status": driverAcceptStatus,
        "driver_accept_datetime": driverAcceptDatetime,
        "driver_start_ride": driverStartRide,
        "driver_start_ride_time": driverStartRideTime,
        "completed_status": completedStatus,
        "completed_status_time": completedStatusTime,
        "km": km,
        "payment_type": paymentType,
        "estimated_price": estimatedPrice,
        "on_ride": onRide,
        "cancelled_by": cancelledBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "is_deleted": isDeleted,
        "user": user?.toJson(),
        "driver": driver?.toJson(),
        "order": order?.toJson(),
    };
}

class Driver {
    int? id;
    String? firstName;
    String? lastName;
    int? phone;
    String? email;
    dynamic emailVerifiedAt;
    dynamic phoneVerifiedAt;
    bool? isPhoneVerified;
    bool? isEmailVerified;
    String? image;
    String? deviceToken;
    bool? status;
    bool? active;
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

    Driver({
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

    factory Driver.fromJson(Map<String, dynamic> json) => Driver(
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

class RiderOrder {
    int? id;
    String? orderUid;
    int? userId;
    int? driverId;
    int? establishmentId;
    String? orderAmount;
    String? couponDiscountAmount;
    String? couponDiscountTitle;
    String? paymentStatus;
    String? orderStatus;
    String? totalTaxAmount;
    String? paymentMethod;
    String? transactionReference;
    String? couponCode;
    dynamic orderNote;
    String? orderType;
    dynamic deliveryCharge;
    DateTime? scheduleAt;
    dynamic callback;
    String? otp;
    DateTime? pending;
    dynamic accepted;
    dynamic confirmed;
    dynamic processing;
    dynamic handover;
    dynamic pickedUp;
    dynamic delivered;
    dynamic canceled;
    dynamic refundRequested;
    dynamic refunded;
    DeliveryAddress? deliveryAddress;
    dynamic scheduled;
    dynamic establishmentDiscountAmount;
    String? originalDeliveryCharge;
    dynamic adjustment;
    dynamic edited;
    int? zoneId;
    dynamic processingTime;
    dynamic freeDeliveryBy;
    String? couponCreatedBy;
    int? vehicleId;
    int? distance;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? orderReference;
    Fee? fee;
    List<OrderDetail>? orderDetails;
    Establishment? establishment;

    RiderOrder({
        this.id,
        this.orderUid,
        this.userId,
        this.driverId,
        this.establishmentId,
        this.orderAmount,
        this.couponDiscountAmount,
        this.couponDiscountTitle,
        this.paymentStatus,
        this.orderStatus,
        this.totalTaxAmount,
        this.paymentMethod,
        this.transactionReference,
        this.couponCode,
        this.orderNote,
        this.orderType,
        this.deliveryCharge,
        this.scheduleAt,
        this.callback,
        this.otp,
        this.pending,
        this.accepted,
        this.confirmed,
        this.processing,
        this.handover,
        this.pickedUp,
        this.delivered,
        this.canceled,
        this.refundRequested,
        this.refunded,
        this.deliveryAddress,
        this.scheduled,
        this.establishmentDiscountAmount,
        this.originalDeliveryCharge,
        this.adjustment,
        this.edited,
        this.zoneId,
        this.processingTime,
        this.freeDeliveryBy,
        this.couponCreatedBy,
        this.vehicleId,
        this.distance,
        this.createdAt,
        this.updatedAt,
        this.orderReference,
        this.fee,
        this.orderDetails,
        this.establishment,
    });

    factory RiderOrder.fromJson(Map<String, dynamic> json) =>RiderOrder(
        id: json["id"],
        orderUid: json["order_uid"],
        userId: json["user_id"],
        driverId: json["driver_id"],
        establishmentId: json["establishment_id"],
        orderAmount: json["order_amount"],
        couponDiscountAmount: json["coupon_discount_amount"],
        couponDiscountTitle: json["coupon_discount_title"],
        paymentStatus: json["payment_status"],
        orderStatus: json["order_status"],
        totalTaxAmount: json["total_tax_amount"],
        paymentMethod: json["payment_method"],
        transactionReference: json["transaction_reference"],
        couponCode: json["coupon_code"],
        orderNote: json["order_note"],
        orderType: json["order_type"],
        deliveryCharge: json["delivery_charge"],
        scheduleAt: json["schedule_at"] == null ? null : DateTime.parse(json["schedule_at"]),
        callback: json["callback"],
        otp: json["otp"],
        pending: json["pending"] == null ? null : DateTime.parse(json["pending"]),
        accepted: json["accepted"],
        confirmed: json["confirmed"],
        processing: json["processing"],
        handover: json["handover"],
        pickedUp: json["picked_up"],
        delivered: json["delivered"],
        canceled: json["canceled"],
        refundRequested: json["refund_requested"],
        refunded: json["refunded"],
        deliveryAddress: json["delivery_address"] == null ? null : DeliveryAddress.fromJson(json["delivery_address"]),
        scheduled: json["scheduled"],
        establishmentDiscountAmount: json["establishment_discount_amount"],
        originalDeliveryCharge: json["original_delivery_charge"],
        adjustment: json["adjustment"],
        edited: json["edited"],
        zoneId: json["zone_id"],
        processingTime: json["processing_time"],
        freeDeliveryBy: json["free_delivery_by"],
        couponCreatedBy: json["coupon_created_by"],
        vehicleId: json["vehicle_id"],
        distance: json["distance"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        orderReference: json["order_reference"],
        fee: json["fee"] == null ? null : Fee.fromJson(json["fee"]),
        orderDetails: json["order_details"] == null ? [] : List<OrderDetail>.from(json["order_details"]!.map((x) => OrderDetail.fromJson(x))),
        establishment: json["establishment"] == null ? null : Establishment.fromJson(json["establishment"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "order_uid": orderUid,
        "user_id": userId,
        "driver_id": driverId,
        "establishment_id": establishmentId,
        "order_amount": orderAmount,
        "coupon_discount_amount": couponDiscountAmount,
        "coupon_discount_title": couponDiscountTitle,
        "payment_status": paymentStatus,
        "order_status": orderStatus,
        "total_tax_amount": totalTaxAmount,
        "payment_method": paymentMethod,
        "transaction_reference": transactionReference,
        "coupon_code": couponCode,
        "order_note": orderNote,
        "order_type": orderType,
        "delivery_charge": deliveryCharge,
        "schedule_at": scheduleAt?.toIso8601String(),
        "callback": callback,
        "otp": otp,
        "pending": pending?.toIso8601String(),
        "accepted": accepted,
        "confirmed": confirmed,
        "processing": processing,
        "handover": handover,
        "picked_up": pickedUp,
        "delivered": delivered,
        "canceled": canceled,
        "refund_requested": refundRequested,
        "refunded": refunded,
        "delivery_address": deliveryAddress?.toJson(),
        "scheduled": scheduled,
        "establishment_discount_amount": establishmentDiscountAmount,
        "original_delivery_charge": originalDeliveryCharge,
        "adjustment": adjustment,
        "edited": edited,
        "zone_id": zoneId,
        "processing_time": processingTime,
        "free_delivery_by": freeDeliveryBy,
        "coupon_created_by": couponCreatedBy,
        "vehicle_id": vehicleId,
        "distance": distance,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "order_reference": orderReference,
        "fee": fee?.toJson(),
        "order_details": orderDetails == null ? [] : List<dynamic>.from(orderDetails!.map((x) => x.toJson())),
        "establishment": establishment?.toJson(),
    };
}

class DeliveryAddress {
    String? contactPersonName;
    int? contactPersonPhone;
    String? addressType;
    String? address;
    double? latitude;
    double? longitude;
    String? floor;
    String? road;
    String? house;

    DeliveryAddress({
        this.contactPersonName,
        this.contactPersonPhone,
        this.addressType,
        this.address,
        this.latitude,
        this.longitude,
        this.floor,
        this.road,
        this.house,
    });

    factory DeliveryAddress.fromJson(Map<String, dynamic> json) => DeliveryAddress(
        contactPersonName: json["contact_person_name"],
        contactPersonPhone: json["contact_person_phone"],
        addressType: json["address_type"],
        address: json["address"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        floor: json["floor"],
        road: json["road"],
        house: json["house"],
    );

    Map<String, dynamic> toJson() => {
        "contact_person_name": contactPersonName,
        "contact_person_phone": contactPersonPhone,
        "address_type": addressType,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "floor": floor,
        "road": road,
        "house": house,
    };
}

class Establishment {
    int? id;
    String? name;
    String? phone;
    String? email;
    String? logo;
    double? latitude;
    double? longitude;
    String? address;
    String? minimumOrder;
    String? commission;
    bool? scheduleOrder;
    String? openingTime;
    bool? isOpen;
    String? closingTime;
    bool? status;
    int? vendorId;
    bool? freeDelivery;
    String? coverPhoto;
    bool? delivery;
    bool? takeAway;
    bool? foodSection;
    String? tax;
    int? zoneId;
    bool? active;
    String? offDay;
    dynamic gst;
    bool? selfDeliverySystem;
    String? minimumShippingCharge;
    String? deliveryTime;
    int? orderCount;
    int? totalOrder;
    String? kmShippingCharges;
    String? establishmentId;
    String? maximumShippingCharge;
    String? slug;
    bool? orderSubscriptionActive;
    String? establishmentType;
    String? deliveryCharge;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deleteAt;
    String? altId;
    int? countryId;
    int? stateId;
    dynamic certificate;
    dynamic cityId;
    List<dynamic>? reviews;

    Establishment({
        this.id,
        this.name,
        this.phone,
        this.email,
        this.logo,
        this.latitude,
        this.longitude,
        this.address,
        this.minimumOrder,
        this.commission,
        this.scheduleOrder,
        this.openingTime,
        this.isOpen,
        this.closingTime,
        this.status,
        this.vendorId,
        this.freeDelivery,
        this.coverPhoto,
        this.delivery,
        this.takeAway,
        this.foodSection,
        this.tax,
        this.zoneId,
        this.active,
        this.offDay,
        this.gst,
        this.selfDeliverySystem,
        this.minimumShippingCharge,
        this.deliveryTime,
        this.orderCount,
        this.totalOrder,
        this.kmShippingCharges,
        this.establishmentId,
        this.maximumShippingCharge,
        this.slug,
        this.orderSubscriptionActive,
        this.establishmentType,
        this.deliveryCharge,
        this.createdAt,
        this.updatedAt,
        this.deleteAt,
        this.altId,
        this.countryId,
        this.stateId,
        this.certificate,
        this.cityId,
        this.reviews,
    });

    factory Establishment.fromJson(Map<String, dynamic> json) => Establishment(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        logo: json["logo"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        address: json["address"],
        minimumOrder: json["minimum_order"],
        commission: json["commission"],
        scheduleOrder: json["schedule_order"],
        openingTime: json["opening_time"],
        isOpen: json["is_open"],
        closingTime: json["closing_time"],
        status: json["status"],
        vendorId: json["vendor_id"],
        freeDelivery: json["free_delivery"],
        coverPhoto: json["cover_photo"],
        delivery: json["delivery"],
        takeAway: json["take_away"],
        foodSection: json["food_section"],
        tax: json["tax"],
        zoneId: json["zone_id"],
        active: json["active"],
        offDay: json["off_day"],
        gst: json["gst"],
        selfDeliverySystem: json["self_delivery_system"],
        minimumShippingCharge: json["minimum_shipping_charge"],
        deliveryTime: json["delivery_time"],
        orderCount: json["order_count"],
        totalOrder: json["total_order"],
        kmShippingCharges: json["km_shipping_charges"],
        establishmentId: json["establishment_id"],
        maximumShippingCharge: json["maximum_shipping_charge"],
        slug: json["slug"],
        orderSubscriptionActive: json["order_subscription_active"],
        establishmentType: json["establishment_type"],
        deliveryCharge: json["delivery_charge"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deleteAt: json["delete_at"],
        altId: json["alt_id"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        certificate: json["certificate"],
        cityId: json["city_id"],
        reviews: json["reviews"] == null ? [] : List<dynamic>.from(json["reviews"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "logo": logo,
        "latitude": latitude,
        "longitude": longitude,
        "address": address,
        "minimum_order": minimumOrder,
        "commission": commission,
        "schedule_order": scheduleOrder,
        "opening_time": openingTime,
        "is_open": isOpen,
        "closing_time": closingTime,
        "status": status,
        "vendor_id": vendorId,
        "free_delivery": freeDelivery,
        "cover_photo": coverPhoto,
        "delivery": delivery,
        "take_away": takeAway,
        "food_section": foodSection,
        "tax": tax,
        "zone_id": zoneId,
        "active": active,
        "off_day": offDay,
        "gst": gst,
        "self_delivery_system": selfDeliverySystem,
        "minimum_shipping_charge": minimumShippingCharge,
        "delivery_time": deliveryTime,
        "order_count": orderCount,
        "total_order": totalOrder,
        "km_shipping_charges": kmShippingCharges,
        "establishment_id": establishmentId,
        "maximum_shipping_charge": maximumShippingCharge,
        "slug": slug,
        "order_subscription_active": orderSubscriptionActive,
        "establishment_type": establishmentType,
        "delivery_charge": deliveryCharge,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "delete_at": deleteAt,
        "alt_id": altId,
        "country_id": countryId,
        "state_id": stateId,
        "certificate": certificate,
        "city_id": cityId,
        "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
    };
}

class Fee {
    int? total;
    int? subTotal;
    int? tax;
    int? taxSubTotal;
    int? deliveryFee;
    int? serviceFee;
    int? commission;
    String? discount;

    Fee({
        this.total,
        this.subTotal,
        this.tax,
        this.taxSubTotal,
        this.deliveryFee,
        this.serviceFee,
        this.commission,
        this.discount,
    });

    factory Fee.fromJson(Map<String, dynamic> json) => Fee(
        total: json["total"],
        subTotal: json["subTotal"],
        tax: json["tax"],
        taxSubTotal: json["taxSubTotal"],
        deliveryFee: json["deliveryFee"],
        serviceFee: json["serviceFee"],
        commission: json["commission"],
        discount: json["discount"],
    );

    Map<String, dynamic> toJson() => {
        "total": total,
        "subTotal": subTotal,
        "tax": tax,
        "taxSubTotal": taxSubTotal,
        "deliveryFee": deliveryFee,
        "serviceFee": serviceFee,
        "commission": commission,
        "discount": discount,
    };
}

class OrderDetail {
    int? id;
    int? itemId;
    int? orderId;
    String? price;
    String? itemDetails;
    String? discountOnFood;
    String? discountType;
    int? quantity;
    String? taxAmount;
    dynamic variant;
    dynamic itemCampaignId;
    String? totalAddOnPrice;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic itemCampaign;
    ItemBought? itemBought;

    OrderDetail({
        this.id,
        this.itemId,
        this.orderId,
        this.price,
        this.itemDetails,
        this.discountOnFood,
        this.discountType,
        this.quantity,
        this.taxAmount,
        this.variant,
        this.itemCampaignId,
        this.totalAddOnPrice,
        this.createdAt,
        this.updatedAt,
        this.itemCampaign,
        this.itemBought,
    });

    factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
        id: json["id"],
        itemId: json["item_id"],
        orderId: json["order_id"],
        price: json["price"],
        itemDetails: json["item_details"],
        discountOnFood: json["discount_on_food"],
        discountType: json["discount_type"],
        quantity: json["quantity"],
        taxAmount: json["tax_amount"],
        variant: json["variant"],
        itemCampaignId: json["item_campaign_id"],
        totalAddOnPrice: json["total_add_on_price"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        itemCampaign: json["item_campaign"],
        itemBought: json["item_bought"] == null ? null : ItemBought.fromJson(json["item_bought"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "item_id": itemId,
        "order_id": orderId,
        "price": price,
        "item_details": itemDetails,
        "discount_on_food": discountOnFood,
        "discount_type": discountType,
        "quantity": quantity,
        "tax_amount": taxAmount,
        "variant": variant,
        "item_campaign_id": itemCampaignId,
        "total_add_on_price": totalAddOnPrice,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "item_campaign": itemCampaign,
        "item_bought": itemBought?.toJson(),
    };
}

class ItemBought {
    int? menuId;
    int? establishmentId;
    String? menuName;
    int? menuQuantity;
    int? menuTotal;
    int? menuPrice;
    String? menuImage;
    List<MenuAddon>? menuAddons;
    List<MenuVariation>? menuVariation;

    ItemBought({
        this.menuId,
        this.establishmentId,
        this.menuName,
        this.menuQuantity,
        this.menuTotal,
        this.menuPrice,
        this.menuImage,
        this.menuAddons,
        this.menuVariation,
    });

    factory ItemBought.fromJson(Map<String, dynamic> json) => ItemBought(
        menuId: json["menu_id"],
        establishmentId: json["establishment_id"],
        menuName: json["menu_name"],
        menuQuantity: json["menu_quantity"],
        menuTotal: json["menu_total"],
        menuPrice: json["menu_price"],
        menuImage: json["menu_image"],
        menuAddons: json["menu_addons"] == null ? [] : List<MenuAddon>.from(json["menu_addons"]!.map((x) => MenuAddon.fromJson(x))),
        menuVariation: json["menu_variation"] == null ? [] : List<MenuVariation>.from(json["menu_variation"]!.map((x) => MenuVariation.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "menu_id": menuId,
        "establishment_id": establishmentId,
        "menu_name": menuName,
        "menu_quantity": menuQuantity,
        "menu_total": menuTotal,
        "menu_price": menuPrice,
        "menu_image": menuImage,
        "menu_addons": menuAddons == null ? [] : List<dynamic>.from(menuAddons!.map((x) => x.toJson())),
        "menu_variation": menuVariation == null ? [] : List<dynamic>.from(menuVariation!.map((x) => x.toJson())),
    };
}

class MenuAddon {
    int? addonsId;
    String? addonsName;
    int? addonsQuantity;
    int? addonsTotal;
    int? addonsPrice;

    MenuAddon({
        this.addonsId,
        this.addonsName,
        this.addonsQuantity,
        this.addonsTotal,
        this.addonsPrice,
    });

    factory MenuAddon.fromJson(Map<String, dynamic> json) => MenuAddon(
        addonsId: json["addons_id"],
        addonsName: json["addons_name"],
        addonsQuantity: json["addons_quantity"],
        addonsTotal: json["addons_total"],
        addonsPrice: json["addons_price"],
    );

    Map<String, dynamic> toJson() => {
        "addons_id": addonsId,
        "addons_name": addonsName,
        "addons_quantity": addonsQuantity,
        "addons_total": addonsTotal,
        "addons_price": addonsPrice,
    };
}

class MenuVariation {
    int? quantity;
    int? total;
    int? price;
    String? label;

    MenuVariation({
        this.quantity,
        this.total,
        this.price,
        this.label,
    });

    factory MenuVariation.fromJson(Map<String, dynamic> json) => MenuVariation(
        quantity: json["quantity"],
        total: json["total"],
        price: json["price"],
        label: json["label"],
    );

    Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "total": total,
        "price": price,
        "label": label,
    };
}

class User {
    int? id;
    int? userId;
    String? firstname;
    String? lastname;
    int? phone;
    String? email;
    dynamic image;
    bool? isPhoneVerified;
    DateTime? emailVerifiedAt;
    dynamic interest;
    String? deviceToken;
    bool? status;
    int? orderCount;
    dynamic loginMedium;
    dynamic socialId;
    dynamic zoneId;
    int? walletBalance;
    dynamic refCode;
    int? refBy;
    dynamic tempToken;
    String? accountStatus;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? countryId;
    int? isDeletedAt;

    User({
        this.id,
        this.userId,
        this.firstname,
        this.lastname,
        this.phone,
        this.email,
        this.image,
        this.isPhoneVerified,
        this.emailVerifiedAt,
        this.interest,
        this.deviceToken,
        this.status,
        this.orderCount,
        this.loginMedium,
        this.socialId,
        this.zoneId,
        this.walletBalance,
        this.refCode,
        this.refBy,
        this.tempToken,
        this.accountStatus,
        this.createdAt,
        this.updatedAt,
        this.countryId,
        this.isDeletedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userId: json["user_id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        phone: json["phone"],
        email: json["email"],
        image: json["image"],
        isPhoneVerified: json["is_phone_verified"],
        emailVerifiedAt: json["email_verified_at"] == null ? null : DateTime.parse(json["email_verified_at"]),
        interest: json["interest"],
        deviceToken: json["device_token"],
        status: json["status"],
        orderCount: json["order_count"],
        loginMedium: json["login_medium"],
        socialId: json["social_id"],
        zoneId: json["zone_id"],
        walletBalance: json["wallet_balance"],
        refCode: json["ref_code"],
        refBy: json["ref_by"],
        tempToken: json["temp_token"],
        accountStatus: json["account_status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        countryId: json["country_id"],
        isDeletedAt: json["is_deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "firstname": firstname,
        "lastname": lastname,
        "phone": phone,
        "email": email,
        "image": image,
        "is_phone_verified": isPhoneVerified,
        "email_verified_at": emailVerifiedAt?.toIso8601String(),
        "interest": interest,
        "device_token": deviceToken,
        "status": status,
        "order_count": orderCount,
        "login_medium": loginMedium,
        "social_id": socialId,
        "zone_id": zoneId,
        "wallet_balance": walletBalance,
        "ref_code": refCode,
        "ref_by": refBy,
        "temp_token": tempToken,
        "account_status": accountStatus,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "country_id": countryId,
        "is_deleted_at": isDeletedAt,
    };
}
