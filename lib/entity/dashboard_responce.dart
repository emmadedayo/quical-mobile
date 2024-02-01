// To parse this JSON data, do
//
//     final dashboardResponse = dashboardResponseFromJson(jsonString);

import 'dart:convert';

DashboardResponse dashboardResponseFromJson(String str) =>
    DashboardResponse.fromJson(json.decode(str));

String dashboardResponseToJson(DashboardResponse data) =>
    json.encode(data.toJson());

class DashboardResponse {
  int? statusCode;
  bool? success;
  String? message;
  Data? data;

  DashboardResponse({
    this.statusCode,
    this.success,
    this.message,
    this.data,
  });

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      DashboardResponse(
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
  int? couponsPending;
  int? orders;
  int? countConfirmed;
  int? countProcessing;
  int? countHandover;
  int? countPickedUp;
  int? countDelivered;
  int? countCancelled;
  dynamic sumDelivered;
  List<Graph>? graph;
  List<MostReview>? mostReview;

  Data({
    this.couponsPending,
    this.orders,
    this.countConfirmed,
    this.countProcessing,
    this.countHandover,
    this.countPickedUp,
    this.countDelivered,
    this.countCancelled,
    this.sumDelivered,
    this.graph,
    this.mostReview,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        couponsPending: json["couponsPending"],
        orders: json["orders"],
        countConfirmed: json["countConfirmed"],
        countProcessing: json["countProcessing"],
        countHandover: json["countHandover"],
        countPickedUp: json["countPickedUp"],
        countDelivered: json["countDelivered"],
        countCancelled: json["countCancelled"],
        sumDelivered: json["sumDelivered"],
        graph: json["graph"] == null
            ? []
            : List<Graph>.from(json["graph"]!.map((x) => Graph.fromJson(x))),
        mostReview: json["mostReview"] == null
            ? []
            : List<MostReview>.from(
                json["mostReview"]!.map((x) => MostReview.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "couponsPending": couponsPending,
        "orders": orders,
        "countConfirmed": countConfirmed,
        "countProcessing": countProcessing,
        "countHandover": countHandover,
        "countPickedUp": countPickedUp,
         
        "countDelivered": countDelivered,
        "countCancelled": countCancelled,
        "sumDelivered": sumDelivered,
        "graph": graph == null
            ? []
            : List<dynamic>.from(graph!.map((x) => x.toJson())),
        "mostReview": mostReview == null
            ? []
            : List<dynamic>.from(mostReview!.map((x) => x.toJson())),
      };
}

class Graph {
  String? orderAmount;
  int? month;

  Graph({
    this.orderAmount,
    this.month,
  });

  factory Graph.fromJson(Map<String, dynamic> json) => Graph(
        orderAmount: json["order_amount"],
        month: json["month"],
      );

  Map<String, dynamic> toJson() => {
        "order_amount": orderAmount,
        "month": month,
      };
}

class MostReview {
  int? id;
  String? altId;
  String? name;
  String? description;
  String? image;
  int? categoryId;
  List<Variation>? variations;
  List<AddOn>? addOns;
  List<Attribute>? attributes;
  List<ChoiceOption>? choiceOptions;
  int? price;
  String? tax;
  int? itemTax;
  dynamic taxType;
  int? discount;
  dynamic discountType;
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
  List<Review>? reviews;
  Category? category;
  Establishment? establishment;

  MostReview({
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
    this.establishment,
  });

  factory MostReview.fromJson(Map<String, dynamic> json) => MostReview(
        id: json["id"],
        altId: json["alt_id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        categoryId: json["category_id"],
        variations: json["variations"] == null
            ? []
            : List<Variation>.from(
                json["variations"]!.map((x) => Variation.fromJson(x))),
        addOns: json["add_ons"] == null
            ? []
            : List<AddOn>.from(json["add_ons"]!.map((x) => AddOn.fromJson(x))),
        attributes: json["attributes"] == null
            ? []
            : List<Attribute>.from(
                json["attributes"]!.map((x) => Attribute.fromJson(x))),
        choiceOptions: json["choice_options"] == null
            ? []
            : List<ChoiceOption>.from(
                json["choice_options"]!.map((x) => ChoiceOption.fromJson(x))),
        price: json["price"],
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
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        reviews: json["reviews"] == null
            ? []
            : List<Review>.from(
                json["reviews"]!.map((x) => Review.fromJson(x))),
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        establishment: json["establishment"] == null
            ? null
            : Establishment.fromJson(json["establishment"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "alt_id": altId,
        "name": name,
        "description": description,
        "image": image,
        "category_id": categoryId,
        "variations": variations == null
            ? []
            : List<dynamic>.from(variations!.map((x) => x.toJson())),
        "add_ons": addOns == null
            ? []
            : List<dynamic>.from(addOns!.map((x) => x.toJson())),
        "attributes": attributes == null
            ? []
            : List<dynamic>.from(attributes!.map((x) => x.toJson())),
        "choice_options": choiceOptions == null
            ? []
            : List<dynamic>.from(choiceOptions!.map((x) => x.toJson())),
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
        "reviews": reviews == null
            ? []
            : List<dynamic>.from(reviews!.map((x) => x.toJson())),
        "category": category?.toJson(),
        "establishment": establishment?.toJson(),
      };
}

class AddOn {
  int? id;
  dynamic altId;
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
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
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
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
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
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
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
        options: json["options"] == null
            ? []
            : List<String>.from(json["options"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "options":
            options == null ? [] : List<dynamic>.from(options!.map((x) => x)),
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
  Country? country;
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
    this.country,
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
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deleteAt: json["delete_at"],
        altId: json["alt_id"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        certificate: json["certificate"],
        cityId: json["city_id"],
        country:
            json["country"] == null ? null : Country.fromJson(json["country"]),
        reviews: json["reviews"] == null
            ? []
            : List<dynamic>.from(json["reviews"]!.map((x) => x)),
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
        "country": country?.toJson(),
        "reviews":
            reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
      };
}

class Country {
  int? id;
  String? countryName;
  String? countryPhoneCode;
  String? countryCurrency;
  String? countryCurrencySymbol;
  int? operating;
  DateTime? createdAt;
  dynamic updatedAt;

  Country({
    this.id,
    this.countryName,
    this.countryPhoneCode,
    this.countryCurrency,
    this.countryCurrencySymbol,
    this.operating,
    this.createdAt,
    this.updatedAt,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        countryName: json["country_name"],
        countryPhoneCode: json["country_phone_code"],
        countryCurrency: json["country_currency"],
        countryCurrencySymbol: json["country_currency_symbol"],
        operating: json["operating"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "country_name": countryName,
        "country_phone_code": countryPhoneCode,
        "country_currency": countryCurrency,
        "country_currency_symbol": countryCurrencySymbol,
        "operating": operating,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt,
      };
}

class Review {
  int? rating;
  int? itemId;

  Review({
    this.rating,
    this.itemId,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        rating: json["rating"],
        itemId: json["item_id"],
      );

  Map<String, dynamic> toJson() => {
        "rating": rating,
        "item_id": itemId,
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
        values: json["values"] == null
            ? []
            : List<Value>.from(json["values"]!.map((x) => Value.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "min": min,
        "max": max,
        "required": required,
        "values": values == null
            ? []
            : List<dynamic>.from(values!.map((x) => x.toJson())),
      };
}

class Value {
  String? label;
  int? optionPrice;

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
