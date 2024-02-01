class ChangeOrderStatus {
  int? statusCode;
  bool? success;
  String? message;
  OrderData? data;

  ChangeOrderStatus({
    this.statusCode,
    this.success,
    this.message,
    this.data,
  });

  factory ChangeOrderStatus.fromJson(Map<String, dynamic> json) {
    return ChangeOrderStatus(
      statusCode: json['statusCode'],
      success: json['success'],
      message: json['message'],
      data: json['data'] != null ? OrderData.fromJson(json['data']) : null,
    );
  }
}

class OrderData {
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
  // Add other fields as needed

  OrderData({
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
    // Add other fields as needed
  });

  factory OrderData.fromJson(Map<String, dynamic> json) {
    return OrderData(
      id: json['id'],
      orderUid: json['order_uid'],
      userId: json['user_id'],
      driverId: json['driver_id'],
      establishmentId: json['establishment_id'],
      orderAmount: json['order_amount'],
      couponDiscountAmount: json['coupon_discount_amount'],
      couponDiscountTitle: json['coupon_discount_title'],
      paymentStatus: json['payment_status'],
      orderStatus: json['order_status'],
      totalTaxAmount: json['total_tax_amount'],
      paymentMethod: json['payment_method'],
      transactionReference: json['transaction_reference'],
      // Add other fields as needed
    );
  }
}
