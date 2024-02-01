import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class ApiApiStreamResponse {
  int code = 400;
  String? body;
  String? errorMessage;
  //bool _isDone = false;
  Future<dynamic> getApiApiStreamResponse(StreamedResponse response) {
    final Completer<dynamic> completer = Completer<dynamic>();
    debugPrint('Response : ${response.stream.bytesToString()}');
    response.stream.transform(utf8.decoder).listen((String value) async {
      if (body != null) {
        body = body! + value;
      } else {
        body = value;
      }
      errorMessage = '';
    }, onDone: () {
      code = response.statusCode;
      //_isDone = true;
      completer.complete(this);
      // return this;
    }, onError: (dynamic error) {
      debugPrint(error);
      code = response.statusCode;
      errorMessage = error;
      //_isDone = true;
      completer.complete(this);
      //return this;
    });

    // while (!_isDone) {
    //   debugPrint("${response.contentLength} : ${body.length}");
    // }

    return completer.future;
    //return this;
  }

  bool isSuccessful() {
    return code >= 200 && code < 300;
  }
}
