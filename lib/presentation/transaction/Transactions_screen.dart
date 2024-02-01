import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/transaction/widgets/top_headings.dart';
import 'package:quical/presentation/transaction/components/trans_history.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: PsColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PsColors.backgroundColor,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              Icon(
                Icons.keyboard_arrow_left_rounded,
                color: PsColors.backGrayColor,
              ),
              Text(
                "Back",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.backGrayColor,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          "Transaction history",
          style: HelperStyle.textStyle(
            context,
            PsColors.backGrayColor,
            11.sp,
            FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18,
            right: 27,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 36.h,
                ),
                const TransactionsTopHeadings(),
                SizedBox(
                  height: 26.h,
                ),
                TextFieldWidgetSub(
                  controller: searchController,
                  hintText: "",
                  textInputType: TextInputType.text,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "* Required"),
                  ]),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: PsColors.whiteColor,
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
                    hintText: 'Search transaction history',
                    focusColor: PsColors.convertCurrencyTextColor,
                    hintStyle: HelperStyle.textStyle(
                      context,
                      PsColors.textfieldHintTextColor,
                      10.sp,
                      FontWeight.w400,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      onPressed: () {
                        // Handle search button press
                        if (kDebugMode) {
                          print('Search pressed: ${searchController.text}');
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                const TransactionHistoryList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
