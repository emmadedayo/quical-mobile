class PayStackGetBank {
  final String name;
  final String code;

  PayStackGetBank({required this.name, required this.code});

  factory PayStackGetBank.fromJson(Map<String, dynamic> json) {
    return PayStackGetBank(name: json['name'], code: json['code']);
  }
}