// // ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, avoid_print, use_build_context_synchronously, prefer_interpolation_to_compose_strings, unnecessary_null_comparison

// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:loader_overlay/loader_overlay.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:vendor/logic/repository/get_category_repository.dart';
// import 'package:vendor/entity/add_ons_response.dart';
// import 'package:vendor/entity/itemList_response.dart';
// import '../../components/commons.dart';
// import '../../entity/value_holder_entity.dart';
// import '../../router/router_constant.dart';
// import '../../utilities/utils.dart';
// import '../repository/get_add_ons_repository.dart';
// import '../repository/item_repo.dart';
// import '../../entity/category_response.dart';
// import 'package:image_picker/image_picker.dart';
// import '../../entity/add_new_variation.dart';
// import 'package:intl/intl.dart';
// import 'package:http/http.dart' as http;

// class ItemListViewModel extends ChangeNotifier {
//   ItemListViewModel(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }

//   // declearations

//   ValueHolder? psValueHolder;
//   BuildContext context;
//   Item item = Item();
//   bool isDataFetched = false;
//   bool isRequired = false;
//   XFile? selectedImage;
//   List<String> itemType = [
//     "Veg",
//     "Non Veg",
//   ];
//   List<String> selectedItemType = [
//     'All',
//     "Veg",
//     "Non Veg",
//   ];
//   String? catego;
//   String? addon;
//   String? itmType;
//   String? discountType = "PERCENTAGE";
//   String? selectedItemTypeValue;
//   int? categoryId;
//   String? countryCurrencySymbol;
//   String? selectedCategoryValue;
//   bool showCurrencySymbol = false;
//   bool showPercentage = false;
//   bool showNetworkImage = false;
//   bool isImageSelected = false;

//   // form keys
//   final GlobalKey<FormState> itemFormkey = GlobalKey<FormState>();
//   // list of strings
//   List<String> discountTypeList = [
//     "PERCENTAGE",
//     "AMOUNT",
//   ];
//   // TextEditingControllers
//   TextEditingController priceController = TextEditingController();
//   TextEditingController mealTaxController = TextEditingController();
//   TextEditingController discountController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();
//   TextEditingController itemSearchController = TextEditingController();
//   TextEditingController timeStartController = TextEditingController();
//   TextEditingController timeEndController = TextEditingController();
//   // list of fetched data
//   List<Item> itemsCard = <Item>[];
//   List<Addons> addonsList = <Addons>[];
//   List<Categori> category = <Categori>[];
//   List<Item> searchedItems = <Item>[];

//   //search functions
//   void searchItems(String searchText) {
//     searchedItems = List.from(itemsCard);
//     notifyListeners();
//     searchedItems = itemsCard.where((item) {
//       final itemNameLower = item.name!.toLowerCase();
//       final searchLower = searchText.toLowerCase();
//       final categoryMatches = selectedCategoryValue == null ||
//           item.category!.name == selectedCategoryValue;
//       return itemNameLower.contains(searchLower) && categoryMatches;
//     }).toList();
//     notifyListeners();
//   }

//   // init method
//   void init() {
//     fetchItems();
//     fetchCategory();
//     fetchAddons();
//     priceController.addListener(_onTextChanged);
//     discountController.addListener(_onDiscountChanged);
//   }

//   // dispose method
//   @override
//   void dispose() {
//     nameController.text;
//     priceController.addListener(_onTextChanged);
//     discountController.addListener(_onDiscountChanged);
//     super.dispose();
//   }

//   // textField declearations
//   void _onTextChanged() {
//     showCurrencySymbol = priceController.text.isNotEmpty;
//     notifyListeners();
//   }

//   void _onDiscountChanged() {
//     showPercentage = discountController.text.isNotEmpty;
//     notifyListeners();
//   }

//   TextInputFormatter numberFormatter =
//       FilteringTextInputFormatter.allow(RegExp(r'[0-9,]'));

//   String formatNumber(String value) {
//     value = value.replaceAll(',', '');
//     final formatter = NumberFormat('#,###');
//     return formatter.format(int.parse(value));
//   }

//   void setInputFormat(String value) {
//     try {
//       priceController.text = formatNumber(value);
//       priceController.selection = TextSelection.fromPosition(
//         TextPosition(offset: priceController.text.length),
//       );
//     } catch (e) {
//       print(e);
//     }
//   }

//   void setDiscountInputFormat(String value) {
//     try {
//       discountController.text = formatNumber(value);
//       discountController.selection = TextSelection.fromPosition(
//         TextPosition(offset: discountController.text.length),
//       );
//     } catch (e) {
//       print(e);
//     }
//   }

//   TextInputFormatter timeFormatter =
//       FilteringTextInputFormatter.allow(RegExp(r'[0-9:]'));

//   String _formatTime(String value) {
//     value = value.replaceAll(':', '');
//     try {
//       if (value.length > 4) {
//         value = value.substring(0, 4);
//       }

//       if (value.length >= 3) {
//         final minutes = int.parse(value.substring(2, 4));
//         if (minutes > 59) {
//           value = value.substring(0, 2) + '59';
//         }
//       }

//       if (value.length >= 2) {
//         final hours = int.parse(value.substring(0, 2));
//         if (hours > 23) {
//           value = '23' + value.substring(2);
//         }
//       }

//       if (value.length >= 2) {
//         value = value.replaceRange(2, 2, ':');
//       }
//     } catch (e) {
//       print(e);
//     }

//     return value;
//   }

//   void setTimeEndFormat(String value) {
//     timeEndController.text = _formatTime(value);
//     timeEndController.selection = TextSelection.fromPosition(
//       TextPosition(offset: timeEndController.text.length),
//     );
//   }

//   void setTimeStartFormat(String value) {
//     timeStartController.text = _formatTime(value);
//     timeStartController.selection = TextSelection.fromPosition(
//       TextPosition(offset: timeStartController.text.length),
//     );
//   }

// // functions to fetch data

//   void fetchItems() async {
//     isDataFetched = true;
//     notifyListeners();
//     final _apiService = ItemRepository();
//     final response =
//         await _apiService.fetchItems(psValueHolder?.userToken ?? '');
//     if (response.success!) {
//       itemsCard = response.data!;
//       searchedItems = itemsCard;
//       countryCurrencySymbol =
//           psValueHolder!.countryObject!.countryCurrencySymbol;
//       isDataFetched = false;
//       notifyListeners();
//     } else {
//       print(response.message);
//       isDataFetched = false;
//       notifyListeners();
//     }
//   }

//   void fetchCategory() async {
//     final _apiService = GetCategoryRepository();
//     final response =
//         await _apiService.fetchCategories(psValueHolder?.userToken ?? '');
//     if (response.success!) {
//       category = response.data!;
//     } else {
//       notifyListeners();
//     }
//   }

//   void fetchAddons() async {
//     final _apiService = GetAddOnsRepository();
//     final response =
//         await _apiService.fetchAddons(psValueHolder?.userToken ?? '');
//     if (response.success!) {
//       addonsList = response.data!;
//     } else {
//       notifyListeners();
//     }
//   }

//   // functions to update

//   void updateStatus(bool value, String itemId, BuildContext context) async {
//     Map<String, dynamic> data = {"status": value};
//     context.loaderOverlay.show();
//     final _apiService = ItemRepository();
//     final response = await _apiService.updateStatus(
//         itemId, psValueHolder?.userToken ?? '', data);

//     if (response.success!) {
//       Commons().successSnackBar(
//         response.message,
//         context,
//       );
//       context.loaderOverlay.hide();
//       notifyListeners();
//     } else {
//       Commons().errorSnackBar(
//         response.message,
//         context,
//       );
//       context.loaderOverlay.hide();
//       notifyListeners();
//       print(response.message);
//     }
//     notifyListeners();
//   }

//   void updateRecommend(bool value, String itemId, BuildContext context) async {
//     Map<String, dynamic> data = {"is_recommended": value};
//     context.loaderOverlay.show();
//     final _apiService = ItemRepository();
//     final response = await _apiService.updateRecommend(
//         itemId, psValueHolder?.userToken ?? '', data);
//     if (response.success!) {
//       Commons().successSnackBar(
//         response.message,
//         context,
//       );
//       context.loaderOverlay.hide();
//     } else {
//       Commons().errorSnackBar(
//         response.message,
//         context,
//       );
//       context.loaderOverlay.hide();
//       print(response.message);
//     }
//     notifyListeners();
//   }

//   void resetItemUploadFields() {
//     variationModel = [];
//     nameController.clear();
//     descriptionController.clear();
//     selectedImage = null;
//     showNetworkImage = false;
//     notifyListeners();
//     priceController.clear();
//     discountType = 'PERCENTAGE';
//     discountController.clear();
//     timeStartController.clear();
//     timeEndController.clear();
//     addon = null;
//     catego = null;
//     itmType = null;
//     if (itemFormkey.currentState != null) {
//       itemFormkey.currentState!.reset();
//     }
//   }

//   void resetItemUploadFieldsFromEditPage() {
//     variationModel = [];
//     nameController.clear();
//     descriptionController.clear();
//     selectedImage = null;
//     showNetworkImage = true;
//     notifyListeners();
//     priceController.clear();
//     discountType = 'PERCENTAGE';
//     discountController.clear();
//     timeStartController.clear();
//     timeEndController.clear();
//     addon = null;
//     catego = null;
//     itmType = null;
//     if (itemFormkey.currentState != null) {
//       itemFormkey.currentState!.reset();
//     }
//   }

//   // onwill pop scope

//   Future<bool> onWillPop(BuildContext context) async {
//     return await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Are you sure?'),
//             content: const Text('Do you want to discard your changes?'),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(true),
//                 child: const Text('Yes'),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('No'),
//               ),
//             ],
//           ),
//         ) ??
//         false;
//   }

//   // image picker functions
//   Future<XFile?> pickImage() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//     return image;
//   }

//   String? base64Image;
//   Future<void> getImage() async {
//     final XFile? image = await pickImage();
//     if (image != null) {
//       final bytes = await image.readAsBytes();
//       base64Image = base64Encode(bytes);
//       selectedImage = image;
//       notifyListeners();
//     }
//   }

//   String? fileName;
//   String? getFileName() {
//     if (selectedImage != null) {
//       List<String> pathSegments = selectedImage!.path.split('/');
//       return pathSegments.last;
//     }
//     return null;
//   }
//   // function to post Item

//   Map<String, dynamic> get data => {
//         "add_ons": [addon],
//         "attributes": [],
//         "available_time_ends": timeEndController.text,
//         "available_time_starts": timeStartController.text,
//         "category_id": categoryId,
//         "choice_options": [],
//         "description": descriptionController.text,
//         "discount": discountController.text,
//         "discount_type": discountType,
//         "image": "data:image/png;base64,$base64Image",
//         "name": nameController.text,
//         "price": priceController.text,
//         "tax": '',
//         "tax_type": "PERCENTAGE",
//         "variations": variationModel.map((e) => e.toJson()).toList()
//       };

//   void addItem(BuildContext context) async {
//     if (itemFormkey.currentState!.validate()) {
//       itemFormkey.currentState!.save();
//       if (selectedImage == null) {
//         Commons().errorSnackBar(
//           'Image is required',
//           context,
//         );
//       } else if (catego == null) {
//         Commons().errorSnackBar(
//           'Item category is required',
//           context,
//         );
//       } else if (itmType == null) {
//         Commons().errorSnackBar('Item type is required', context);
//       } else if (addon == null) {
//         Commons().errorSnackBar(
//           'Add at least One Add ons',
//           context,
//         );
//       } else {
//         final _apiService = ItemRepository();
//         EasyLoading.show();
//         final response =
//             await _apiService.addItem(psValueHolder?.userToken ?? '', data);
//         if (response.success!) {
//           EasyLoading.dismiss();
//           fetchItems();
//           Navigator.pop(context);
//           Commons().successSnackBar(
//             response.message,
//             context,
//           );
//           variationModel = [];
//           nameController.clear();
//           descriptionController.clear();
//           selectedImage = null;
//           priceController.clear();
//           discountType = 'PERCENTAGE';
//           discountController.clear();
//           timeStartController.clear();
//           timeEndController.clear();
//           addon = null;
//           catego = null;
//           itmType = null;
//         } else {
//           EasyLoading.dismiss();
//           Commons().errorSnackBar(
//             response.message,
//             context,
//           );
//         }
//       }
//     }

//     notifyListeners();
//   }

//   Future<String?> getImageAsBase64String(String imageUrl) async {
//     try {
//       final response = await http.get(Uri.parse(imageUrl));
//       if (response.statusCode == 200) {
//         String base64String = base64Encode(response.bodyBytes);
//         return base64String;
//       } else {
//         return null;
//       }
//     } catch (e) {
//       print("Error: $e");
//       return null;
//     }
//   }

//   Map<String, dynamic> get updateItemData => {
//         "add_ons": [addon],
//         "attributes": [],
//         "available_time_ends": timeEndController.text,
//         "available_time_starts": timeStartController.text,
//         "category_id": categoryId,
//         "choice_options": [],
//         "description": descriptionController.text,
//         "discount": discountController.text,
//         "discount_type": discountType,
//         "image": "data:image/png;base64,$base64Image",
//         "name": nameController.text,
//         "price": priceController.text,
//         "change_image": true,
//         "tax": '',
//         "tax_type": "PERCENTAGE",
//         "variations": variationModel.map((e) => e.toJson()).toList()
//       };

//   void updateItem(BuildContext context, String itemId) async {
//     EasyLoading.show();
//     if (itemFormkey.currentState!.validate()) {
//       itemFormkey.currentState!.save();
//       if (catego == null) {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(context, 'Item category is required');
//       } else if (itmType == null) {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(context, 'Item type is required');
//       } else if (addon == null) {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(context, 'Add at least One Add ons');
//       } else {
//         final _apiService = ItemRepository();
//         final response = await _apiService.updateItem(
//             itemId, psValueHolder?.userToken ?? '', updateItemData);
//         if (response.success!) {
//           EasyLoading.dismiss();
//           fetchItems();
//           Navigator.pop(context);
//           Utils.displaySuccessMessage(context, response.message!);
//           variationModel = [];
//           nameController.clear();
//           descriptionController.clear();
//           selectedImage = null;
//           priceController.clear();
//           discountType = 'PERCENTAGE';
//           discountController.clear();
//           timeStartController.clear();
//           timeEndController.clear();
//           addon = null;
//           catego = null;
//           itmType = null;
//         } else {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(context, response.message!);
//         }
//       }
//     }

//     notifyListeners();
//   }

//   //edit Item
//   void editItem(BuildContext context) async {
//     variationModel = item.variations!.map((e) {
//       List<OptionItem> options = [];
//       final _nameController = TextEditingController();
//       final _minController = TextEditingController();
//       final _maxController = TextEditingController();
//       _nameController.text = e.name ?? "";
//       _minController.text = e.min?.toString() ?? "";
//       _maxController.text = e.max?.toString() ?? "";
//       options = e.values!.map((p) {
//         final _nController = TextEditingController();
//         final _priceController = TextEditingController();
//         _nController.text = p.label ?? "";
//         _priceController.text = p.optionPrice?.toString() ?? "0.00";
//         return OptionItem(
//             nameController: _nController, priceController: _priceController);
//       }).toList();
//       return ItemVariationModel(isRequired = e.required ?? false, options,
//           nameController: _nameController,
//           minController: _minController,
//           maxController: _maxController,
//           itemType: e.type ?? "single");
//     }).toList();
//     print(variationModel.length);
//     Navigator.pushNamed(context, RoutePaths.addNewItemScreenIndex);

//     nameController.text = item.name!;
//     descriptionController.text = item.description!;
//     catego = item.category!.name;
//     itmType = 'Veg';
//     priceController.text = item.price.toString();
//     discountType = item.discountType ?? 'AMOUNT';
//     discountController.text = item.discount.toString();
//     timeEndController.text = item.availableTimeEnds!;

//     timeStartController.text = item.availableTimeStarts!;
//   }

//   //delete item
//   void deleteItem(BuildContext context) async {
//     context.loaderOverlay.show();
//     notifyListeners();
//     final _apiService = ItemRepository();
//     final response = await _apiService.deleteItem(
//         psValueHolder?.userToken ?? '', item.altId!);
//     if (response.success!) {
//       context.loaderOverlay.hide();
//       fetchItems();
//       Navigator.pop(context);
//       Commons().successSnackBar(
//         response.message,
//         context,
//       );
//       notifyListeners();
//     } else {
//       context.loaderOverlay.hide();
//       notifyListeners();
//     }
//   }

//   // updating functions
//   void setCategory(String setCategory) {
//     catego = setCategory;
//     notifyListeners();
//   }

//   void setAddon(String setAddon) {
//     addon = setAddon;
//     notifyListeners();
//   }

//   void setItemType(String setItemType) {
//     itmType = setItemType;
//     notifyListeners();
//   }

//   void setDiscountType(String setDiscountType) {
//     discountType = setDiscountType;
//     notifyListeners();
//   }

//   void setSelectedItemType(String setSelectedItemType) {
//     selectedItemTypeValue = setSelectedItemType;
//     notifyListeners();
//   }

//   void setIsRequired(int index) {
//     variationModel[index].isRequired = !variationModel[index].isRequired;
//     notifyListeners();
//   }

//   void setSelectionType(int index, String text) {
//     variationModel[index].itemType = text;
//     notifyListeners();
//   }

//   // add widgets to list function

//   void addVariation() {
//     createNewVariation();
//     print(variationModel);
//     notifyListeners();
//   }

//   void addOption(int index) {
//     final _nameController = TextEditingController();

//     final _priceController = TextEditingController();
//     variationModel[index].options.add(OptionItem(
//           nameController: _nameController,
//           priceController: _priceController,
//         ));
//     notifyListeners();
//   }

//   // delete widget from a list
//   void deleteOption(int index, int i) {
//     if (i >= 0 && i < variationModel[index].options.length) {
//       variationModel[index].options.removeAt(i);
//     }
//     notifyListeners();
//   }

//   List<ItemVariationModel> variationModel = [];

//   void createNewVariation() {
//     final _nameController = TextEditingController();
//     final _minController = TextEditingController();
//     final _maxController = TextEditingController();
//     variationModel.add(ItemVariationModel(false, [],
//         nameController: _nameController,
//         itemType: "single",
//         minController: _minController,
//         maxController: _maxController));
//   }

//   //validators

//   String? validateText(value) {
//     if (value!.isEmpty) {
//       return 'Required';
//     }
//     return null;
//   }

//   String? validateNumber(String value) {
//     final RegExp numberRegex = RegExp(r'^\d+(\.\d+)?$');
//     if (!numberRegex.hasMatch(value)) {
//       return 'Please enter a valid number.';
//     }

//     if (value.isEmpty) {
//       return 'Required';
//     }

//     return null;
//   }
// }

// class MaxValueInputFormatter extends TextInputFormatter {
//   final int maxValue;

//   MaxValueInputFormatter(this.maxValue);

//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     if (newValue.text.isEmpty) {
//       return TextEditingValue.empty;
//     }
//     int? value = int.tryParse(newValue.text);
//     if (value == null || value > maxValue) {
//       return oldValue;
//     }
//     return newValue;
//   }
// }
