import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class ApiResponse {
  ApiResponse(Response response) {
    code = response.statusCode;

    if (isSuccessful()) {
      body = response.body;
      errorMessage = '';
    } else {
      body = null;
      try {
        final dynamic hashMap = json.decode(response.body);

        debugPrint(hashMap['message']);
        errorMessage = hashMap['message'];
      } catch (error) {
        debugPrint('Timeout Error');
        errorMessage = 'Timeout Error';
      }
    }
  }
  int code = 0;
  String? body;
  String errorMessage = '';

  bool isSuccessful() {
    return code >= 200 && code < 300;
  }
}
