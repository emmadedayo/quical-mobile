import 'package:flutter/material.dart';

class ItemVariationModel {
  ItemVariationModel(
    this.isRequired,
    this.options, {
    this.nameController,
    this.itemType,
    this.minController,
    this.maxController,
  });

  final TextEditingController? nameController;
  String? itemType;
  final TextEditingController? minController;
  final TextEditingController? maxController;
  bool isRequired;
  List<OptionItem> options;

  Map<String, dynamic> toJson() {
    return {
      "name": nameController?.text ?? '',
      "type": itemType,
      "min": minController != null ? num.parse(minController!.text) : 0,
      "max": maxController != null ? num.parse(maxController!.text) : 0,
      "required": isRequired,
      "values": options.map((e) => e.toJson()).toList()
    };
  }


}

class OptionItem {
  final TextEditingController? nameController;
  final TextEditingController? priceController;

  OptionItem({
    this.nameController,
    this.priceController,
  });

  Map<String, dynamic> toJson() {
    return {
      "label": nameController?.text ?? '',
      "optionPrice": priceController != null ? num.parse(priceController!.text) : 0
    };
  }
}

