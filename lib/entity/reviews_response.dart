// To parse this JSON data, do
//
//     final reviewsResponse = reviewsResponseFromJson(jsonString);

import 'dart:convert';

ReviewsResponse reviewsResponseFromJson(String str) => ReviewsResponse.fromJson(json.decode(str));

String reviewsResponseToJson(ReviewsResponse data) => json.encode(data.toJson());

class ReviewsResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<Review>? data;

    ReviewsResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory ReviewsResponse.fromJson(Map<String, dynamic> json) => ReviewsResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Review>.from(json["data"]!.map((x) => Review.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Review {
    int? id;
    int? itemId;
    int? establishmentId;
    int? userId;
    String? comment;
    String? attachment;
    int? rating;
    int? orderId;
    dynamic itemCampaignId;
    int? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    User? user;
    Item? item;

    Review({
        this.id,
        this.itemId,
        this.establishmentId,
        this.userId,
        this.comment,
        this.attachment,
        this.rating,
        this.orderId,
        this.itemCampaignId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.user,
        this.item,
    });

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        itemId: json["item_id"],
        establishmentId: json["establishment_id"],
        userId: json["user_id"],
        comment: json["comment"],
        attachment: json["attachment"],
        rating: json["rating"],
        orderId: json["order_id"],
        itemCampaignId: json["item_campaign_id"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        item: json["item"] == null ? null : Item.fromJson(json["item"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "item_id": itemId,
        "establishment_id": establishmentId,
        "user_id": userId,
        "comment": comment,
        "attachment": attachment,
        "rating": rating,
        "order_id": orderId,
        "item_campaign_id": itemCampaignId,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "user": user?.toJson(),
        "item": item?.toJson(),
    };
}

class Item {
    int? id;
    String? name;
    String? description;
    String? image;
    int? categoryId;
    List<Variation>? variations;
    List<AddOn>? addOns;
    List<Attribute>? attributes;
    List<ChoiceOption>? choiceOptions;
    String? price;
    String? tax;
    String? taxType;
    String? discount;
    String? discountType;
    String? availableTimeStarts;
    String? availableTimeEnds;
    bool? status;
    int? establishmentId;
    int? orderCount;
    int? avgRating;
    int? ratingCount;
    bool? recommended;
    dynamic slug;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    Category? category;

    Item({
        this.id,
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
        this.category,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        categoryId: json["category_id"],
        variations: json["variations"] == null ? [] : List<Variation>.from(json["variations"]!.map((x) => Variation.fromJson(x))),
        addOns: json["add_ons"] == null ? [] : List<AddOn>.from(json["add_ons"]!.map((x) => AddOn.fromJson(x))),
        attributes: json["attributes"] == null ? [] : List<Attribute>.from(json["attributes"]!.map((x) => Attribute.fromJson(x))),
        choiceOptions: json["choice_options"] == null ? [] : List<ChoiceOption>.from(json["choice_options"]!.map((x) => ChoiceOption.fromJson(x))),
        price: json["price"],
        tax: json["tax"],
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
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        category: json["category"] == null ? null : Category.fromJson(json["category"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "category_id": categoryId,
        "variations": variations == null ? [] : List<dynamic>.from(variations!.map((x) => x.toJson())),
        "add_ons": addOns == null ? [] : List<dynamic>.from(addOns!.map((x) => x.toJson())),
        "attributes": attributes == null ? [] : List<dynamic>.from(attributes!.map((x) => x.toJson())),
        "choice_options": choiceOptions == null ? [] : List<dynamic>.from(choiceOptions!.map((x) => x.toJson())),
        "price": price,
        "tax": tax,
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
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "category": category?.toJson(),
    };
}

class AddOn {
    int? id;
    String? addonName;
    String? addonPrice;
    int? establishmentId;
    bool? status;
    DateTime? createdAt;
    DateTime? updatedAt;

    AddOn({
        this.id,
        this.addonName,
        this.addonPrice,
        this.establishmentId,
        this.status,
        this.createdAt,
        this.updatedAt,
    });

    factory AddOn.fromJson(Map<String, dynamic> json) => AddOn(
        id: json["id"],
        addonName: json["addon_name"],
        addonPrice: json["addon_price"],
        establishmentId: json["establishment_id"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "addon_name": addonName,
        "addon_price": addonPrice,
        "establishment_id": establishmentId,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class Attribute {
    int? id;
    String? name;
    DateTime? createdAt;
    DateTime? updatedAt;

    Attribute({
        this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
    });

    factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"],
        name: json["name"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class Category {
    int? id;
    String? name;
    String? image;
    bool? status;
    String? slug;
    DateTime? createdAt;
    dynamic updatedAt;

    Category({
        this.id,
        this.name,
        this.image,
        this.status,
        this.slug,
        this.createdAt,
        this.updatedAt,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        status: json["status"],
        slug: json["slug"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "status": status,
        "slug": slug,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt,
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
    String? min;
    String? max;
    String? required;
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
    String? optionPrice;

    Value({
        this.label,
        this.optionPrice,
    });

    factory Value.fromJson(Map<String, dynamic> json) => Value(
        label: json["label"],
        optionPrice: json["optionPrice"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "optionPrice": optionPrice,
    };
}

class User {
    int? id;
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
    dynamic orderCount;
    dynamic loginMedium;
    dynamic socialId;
    dynamic zoneId;
    String? walletBalance;
    dynamic refCode;
    dynamic refBy;
    dynamic tempToken;
    String? accountStatus;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deleteAt;

    User({
        this.id,
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
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
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
    );

    Map<String, dynamic> toJson() => {
        "id": id,
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
    };
}
