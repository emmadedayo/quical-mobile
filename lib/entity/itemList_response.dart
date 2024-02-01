// To parse this JSON data, do
//
//     final itemsResponse = itemsResponseFromJson(jsonString);

import 'dart:convert';

ItemsResponse itemsResponseFromJson(String str) => ItemsResponse.fromJson(json.decode(str));

String itemsResponseToJson(ItemsResponse data) => json.encode(data.toJson());

class ItemsResponse {
    int? statusCode;
    bool? success;
    String? message;
    List<Item>? data;

    ItemsResponse({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory ItemsResponse.fromJson(Map<String, dynamic> json) => ItemsResponse(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Item>.from(json["data"]!.map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Item {
    int? id;
    String? altId;
    String? name;
    String? description;
    String? image;
    int? categoryId;
    List<Variation>? variations;
    List<AddOn>? addOns;
    List<dynamic>? attributes;
    List<dynamic>? choiceOptions;
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
    DateTime? updatedAt;
    dynamic deletedAt;
    List<dynamic>? reviews;
    Category? category;

    Item({
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
        this.category,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        altId: json["alt_id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        categoryId: json["category_id"],
        variations: json["variations"] == null ? [] : List<Variation>.from(json["variations"]!.map((x) => Variation.fromJson(x))),
        addOns: json["add_ons"] == null ? [] : List<AddOn>.from(json["add_ons"]!.map((x) => AddOn.fromJson(x))),
        attributes: json["attributes"] == null ? [] : List<dynamic>.from(json["attributes"]!.map((x) => x)),
        choiceOptions: json["choice_options"] == null ? [] : List<dynamic>.from(json["choice_options"]!.map((x) => x)),
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
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        reviews: json["reviews"] == null ? [] : List<dynamic>.from(json["reviews"]!.map((x) => x)),
        category: json["category"] == null ? null : Category.fromJson(json["category"]),
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
        "choice_options": choiceOptions == null ? [] : List<dynamic>.from(choiceOptions!.map((x) => x)),
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
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
        "category": category?.toJson(),
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
