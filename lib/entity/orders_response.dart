// To parse this JSON data, do
//
//     final orderResponse = orderResponseFromJson(jsonString);

import 'dart:convert';

OrderResponse orderResponseFromJson(String str) => OrderResponse.fromJson(json.decode(str));

String orderResponseToJson(OrderResponse data) => json.encode(data.toJson());

class OrderResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<Order>? data;

    OrderResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory OrderResponse.fromJson(Map<String, dynamic> json) => OrderResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Order>.from(json["data"]!.map((x) => Order.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Order {
    int? id;
    String? orderUid;
    int? userId;
    int? driverId;
    int? establishmentId;
    String? orderAmount;
    String? couponDiscountAmount;
    dynamic couponDiscountTitle;
    String? paymentStatus;
    String? orderStatus;
    String? totalTaxAmount;
    String? paymentMethod;
    String? transactionReference;
    dynamic couponCode;
    dynamic orderNote;
    String? orderType;
    dynamic deliveryCharge;
    dynamic scheduleAt;
    dynamic callback;
    String? otp;
    DateTime? pending;
    dynamic accepted;
    dynamic confirmed;
    DateTime? processing;
    DateTime? handover;
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
    String? processingTime;
    dynamic freeDeliveryBy;
    dynamic couponCreatedBy;
    int? vehicleId;
    int? distance;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? orderReference;
    Fee? fee;
    User? user;
    List<OrderDetail>? orderDetails;

    Order({
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
        this.user,
        this.orderDetails,
    });

    factory Order.fromJson(Map<String, dynamic> json) => Order(
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
        scheduleAt: json["schedule_at"],
        callback: json["callback"],
        otp: json["otp"],
        pending: json["pending"] == null ? null : DateTime.parse(json["pending"]),
        accepted: json["accepted"],
        confirmed: json["confirmed"],
        processing: json["processing"] == null ? null : DateTime.parse(json["processing"]),
        handover: json["handover"] == null ? null : DateTime.parse(json["handover"]),
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
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        orderDetails: json["order_details"] == null ? [] : List<OrderDetail>.from(json["order_details"]!.map((x) => OrderDetail.fromJson(x))),
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
        "schedule_at": scheduleAt,
        "callback": callback,
        "otp": otp,
        "pending": pending?.toIso8601String(),
        "accepted": accepted,
        "confirmed": confirmed,
        "processing": processing?.toIso8601String(),
        "handover": handover?.toIso8601String(),
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
        "user": user?.toJson(),
        "order_details": orderDetails == null ? [] : List<dynamic>.from(orderDetails!.map((x) => x.toJson())),
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
    ItemDetails? itemDetails;
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
        itemDetails: json["item_details"] == null ? null : ItemDetails.fromJson(json["item_details"]),
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
        "item_details": itemDetails?.toJson(),
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
    double? menuTotal;
    double? menuPrice;
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
        menuTotal: json["menu_total"]?.toDouble(),
        menuPrice: json["menu_price"]?.toDouble(),
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
    num? quantity;
    num? total;
    num? price;
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

class ItemDetails {
    int? id;
    String? altId;
    String? name;
    String? description;
    String? image;
    int? categoryId;
    List<Variation>? variations;
    List<AddOn>? addOns;
    List<dynamic>? attributes;
    dynamic choiceOptions;
    double? price;
    String? tax;
    int? itemTax;
    String? taxType;
    int? discount;
    String? discountType;
    String? availableTimeStarts;
    String? availableTimeEnds;
    bool? status;
    int? establishmentId;
    int? orderCount;
    int? avgRating;
    int? ratingCount;
    bool? recommended;
    String? slug;
    DateTime? createdAt;
    dynamic updatedAt;
    dynamic deletedAt;
    List<dynamic>? reviews;

    ItemDetails({
        this.id,
        this.altId,
        this.name,
        this.description,
        this.image,
        this.categoryId,
        this.variations,
        this.addOns,
        this.attributes,
        this.choiceOptions,
        this.price,
        this.tax,
        this.itemTax,
        this.taxType,
        this.discount,
        this.discountType,
        this.availableTimeStarts,
        this.availableTimeEnds,
        this.status,
        this.establishmentId,
        this.orderCount,
        this.avgRating,
        this.ratingCount,
        this.recommended,
        this.slug,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.reviews,
    });

    factory ItemDetails.fromJson(Map<String, dynamic> json) => ItemDetails(
        id: json["id"],
        altId: json["alt_id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        categoryId: json["category_id"],
        variations: json["variations"] == null ? [] : List<Variation>.from(json["variations"]!.map((x) => Variation.fromJson(x))),
        addOns: json["add_ons"] == null ? [] : List<AddOn>.from(json["add_ons"]!.map((x) => AddOn.fromJson(x))),
        attributes: json["attributes"] == null ? [] : List<dynamic>.from(json["attributes"]!.map((x) => x)),
        choiceOptions: json["choice_options"],
        price: json["price"]?.toDouble(),
        tax: json["tax"],
        itemTax: json["item_tax"],
        taxType: json["tax_type"],
        discount: json["discount"],
        discountType: json["discount_type"],
        availableTimeStarts: json["available_time_starts"],
        availableTimeEnds: json["available_time_ends"],
        status: json["status"],
        establishmentId: json["establishment_id"],
        orderCount: json["order_count"],
        avgRating: json["avg_rating"],
        ratingCount: json["rating_count"],
        recommended: json["recommended"],
        slug: json["slug"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        reviews: json["reviews"] == null ? [] : List<dynamic>.from(json["reviews"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "alt_id": altId,
        "name": name,
        "description": description,
        "image": image,
        "category_id": categoryId,
        "variations": variations == null ? [] : List<dynamic>.from(variations!.map((x) => x.toJson())),
        "add_ons": addOns == null ? [] : List<dynamic>.from(addOns!.map((x) => x.toJson())),
        "attributes": attributes == null ? [] : List<dynamic>.from(attributes!.map((x) => x)),
        "choice_options": choiceOptions == null ? [] : List<dynamic>.from(choiceOptions!.map((x) => x.toJson())),
        "price": price,
        "tax": tax,
        "item_tax": itemTax,
        "tax_type": taxType,
        "discount": discount,
        "discount_type": discountType,
        "available_time_starts": availableTimeStarts,
        "available_time_ends": availableTimeEnds,
        "status": status,
        "establishment_id": establishmentId,
        "order_count": orderCount,
        "avg_rating": avgRating,
        "rating_count": ratingCount,
        "recommended": recommended,
        "slug": slug,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
    };
}

class AddOn {
    int? id;
    String? altId;
    String? addonName;
    String? addonPrice;
    int? establishmentId;
    bool? status;
    DateTime? createdAt;
    DateTime? updatedAt;

    AddOn({
        this.id,
        this.altId,
        this.addonName,
        this.addonPrice,
        this.establishmentId,
        this.status,
        this.createdAt,
        this.updatedAt,
    });

    factory AddOn.fromJson(Map<String, dynamic> json) => AddOn(
        id: json["id"],
        altId: json["alt_id"],
        addonName: json["addon_name"],
        addonPrice: json["addon_price"],
        establishmentId: json["establishment_id"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "alt_id": altId,
        "addon_name": addonName,
        "addon_price": addonPrice,
        "establishment_id": establishmentId,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class ChoiceOption {
    String? name;
    String? title;
    List<String>? options;

    ChoiceOption({
        this.name,
        this.title,
        this.options,
    });

    factory ChoiceOption.fromJson(Map<String, dynamic> json) => ChoiceOption(
        name: json["name"],
        title: json["title"],
        options: json["options"] == null ? [] : List<String>.from(json["options"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x)),
    };
}

class Variation {
    String? name;
    String? type;
    int? min;
    int? max;
    bool? required;
    List<Value>? values;

    Variation({
        this.name,
        this.type,
        this.min,
        this.max,
        this.required,
        this.values,
    });

    factory Variation.fromJson(Map<String, dynamic> json) => Variation(
        name: json["name"],
        type: json["type"],
        min: json["min"],
        max: json["max"],
        required: json["required"],
        values: json["values"] == null ? [] : List<Value>.from(json["values"]!.map((x) => Value.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "min": min,
        "max": max,
        "required": required,
        "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x.toJson())),
    };
}

class Value {
    String? label;
    double? optionPrice;

    Value({
        this.label,
        this.optionPrice,
    });

    factory Value.fromJson(Map<String, dynamic> json) => Value(
        label: json["label"],
        optionPrice: json["optionPrice"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "optionPrice": optionPrice,
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
    dynamic deleteAt;
    int? countryId;

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
        this.deleteAt,
        this.countryId,
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
        deleteAt: json["delete_at"],
        countryId: json["country_id"],
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
        "delete_at": deleteAt,
        "country_id": countryId,
    };
}
