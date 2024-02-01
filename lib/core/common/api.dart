// ignore_for_file: body_might_complete_normally_catch_error

import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:quical/core/common/api_resources.dart';
import 'package:quical/core/common/api_response.dart';
import 'package:quical/core/common/api_response_object.dart';
import 'package:quical/core/common/api_status.dart';

abstract class PsApi {
  ApiResource<T> psObjectConvert<T>(dynamic dataList, T data) {
    return ApiResource<T>(dataList.status, dataList.message, data);
  }

  Future<ApiResource<R>> getServerSession<T extends ApiObject<dynamic>, R>(
      T obj, String url, String apiSession) async {
    final Client client = http.Client();
    try {
      Map<String, String> headers = {'Authorization': 'Bearer $apiSession'};
      debugPrint('Url=>  $url');
      final Response response =
          await client.get(Uri.parse(url), headers: headers);
      final ApiResponse drApiResponse = ApiResponse(response);
      if (drApiResponse.isSuccessful()) {
        final dynamic hashMap = json.decode(response.body);
        var result = hashMap['data'];
        debugPrint('Url1=>  $result');
        if (result is! Map) {
          final List<T> tList = <T>[];
          result.forEach((dynamic data) {
            tList.add(obj.fromMap(data as dynamic));
          });
          debugPrint('Url1=>  $result');
          return ApiResource<R>(
              ApiStatus.SUCCESS, 'dbnjd', tList as R? ?? R as R?);
        } else {
          debugPrint('Url2=>  ${obj.fromMap(result)}');
          return ApiResource<R>(
              ApiStatus.SUCCESS, 'dkndkd', obj.fromMap(result));
        }
      } else {
        return ApiResource<R>(
            ApiStatus.ERROR, drApiResponse.errorMessage, null);
      }
    } catch (e) {
      debugPrint("==========>Catch ${e.toString()}<=======");
      return ApiResource<R>(ApiStatus.ERROR, e.toString(), null); //e.message ??
    } finally {
      client.close();
    }
  }

  Future<ApiResource<R>> getServerCall<T extends ApiObject<dynamic>, R>(
      T obj, String url) async {
    final Client client = http.Client();
    try {
      debugPrint('Url=>  $url');
      final Response response = await client.get(Uri.parse(url));
      final ApiResponse drApiResponse = ApiResponse(response);
      if (drApiResponse.isSuccessful()) {
        final dynamic hashMap = json.decode(response.body);
        var result = hashMap['data'];
        debugPrint('Url1=>  $result');
        if (result is! Map) {
          final List<T> tList = <T>[];
          result.forEach((dynamic data) {
            tList.add(obj.fromMap(data as dynamic));
          });
          debugPrint('Url1=>  $result');
          return ApiResource<R>(
              ApiStatus.SUCCESS, 'dbnjd', tList as R? ?? R as R?);
        } else {
          debugPrint('Url2=>  ${obj.fromMap(result)}');
          return ApiResource<R>(
              ApiStatus.SUCCESS, 'dkndkd', obj.fromMap(result));
        }
      } else {
        return ApiResource<R>(
            ApiStatus.ERROR, drApiResponse.errorMessage, null);
      }
    } catch (e) {
      debugPrint("==========>Catch ${e.toString()}<=======");
      return ApiResource<R>(ApiStatus.ERROR, e.toString(), null); //e.message ??
    } finally {
      client.close();
    }
  }

  Future<ApiResource<R>> deleteData<T extends ApiObject<dynamic>, R>(
      T obj, String url, String? token) async {
    final Client client = http.Client();
    try {
      Map<String, String> headers;
      if (token == "") {
        headers = {'content-type': 'application/json'};
      } else {
        headers = {
          'content-type': 'application/json',
          'Authorization': 'Bearer $token'
        };
      }
      final Response response = await client.delete(
        Uri.parse(url),
        headers: headers,
      );

      final ApiResponse apiResponse = ApiResponse(response);

      debugPrint("==========>Catch Url $url<=======");
      debugPrint("==========> ${json.decode(response.body)['data']}<=======");

      if (apiResponse.isSuccessful()) {
        final dynamic hashMap, message;
        hashMap = json.decode(response.body)['data'];
        message = json.decode(response.body);
        debugPrint("==========>Body Message ${message['message']}<=======");
        if (hashMap != null) {
          if (hashMap is! Map) {
            final List<T> tList = <T>[];
            hashMap.forEach((dynamic data) {
              tList.add(obj.fromMap(data));
            });
            return ApiResource<R>(
                ApiStatus.SUCCESS, message['message'], tList as R? ?? R as R?);
          } else {
            return ApiResource<R>(
                ApiStatus.SUCCESS, message['message'], obj.fromMap(hashMap));
          }
        } else {
          return ApiResource<R>(
              ApiStatus.SUCCESS, message['message'], obj.fromMap(hashMap));
        }
      } else {
        return ApiResource<R>(ApiStatus.ERROR, apiResponse.errorMessage, null);
      }
    } catch (e) {
      debugPrint("==========>Catch ${e.toString()}<=======");

      return ApiResource<R>(ApiStatus.ERROR, e.toString(), null); //e.message ??
    } finally {
      client.close();
    }
  }

  Future<ApiResource<R>> putData<T extends ApiObject<dynamic>, R>(
      T obj, String url, Map<dynamic, dynamic> jsonMap, String? token) async {
    final Client client = http.Client();
    try {
      Map<String, String> headers;
      if (token == "") {
        headers = {'content-type': 'application/json'};
      } else {
        headers = {
          'content-type': 'application/json',
          'Authorization': 'Bearer $token'
        };
      }
      final Response response = await client
          .put(Uri.parse(url),
              headers: headers, body: const JsonEncoder().convert(jsonMap))
          .catchError((dynamic e) {
        debugPrint("==========>Catch ${e.toString()}<=======");
      });

      final ApiResponse apiResponse = ApiResponse(response);

      debugPrint("==========>Catch Url $url<=======");
      debugPrint("==========> ${json.decode(response.body)['data']}<=======");

      if (apiResponse.isSuccessful()) {
        final dynamic hashMap, message;
        hashMap = json.decode(response.body)['data'];
        message = json.decode(response.body);
        debugPrint("==========>Body Message ${message['message']}<=======");
        if (hashMap != null) {
          if (hashMap is! Map) {
            final List<T> tList = <T>[];
            hashMap.forEach((dynamic data) {
              tList.add(obj.fromMap(data));
            });
            return ApiResource<R>(
                ApiStatus.SUCCESS, message['message'], tList as R? ?? R as R?);
          } else {
            return ApiResource<R>(
                ApiStatus.SUCCESS, message['message'], obj.fromMap(hashMap));
          }
        } else {
          return ApiResource<R>(
              ApiStatus.SUCCESS, message['message'], obj.fromMap(hashMap));
        }
      } else {
        return ApiResource<R>(ApiStatus.ERROR, apiResponse.errorMessage, null);
      }
    } catch (e) {
      debugPrint("==========>Catch ${e.toString()}<=======");

      return ApiResource<R>(ApiStatus.ERROR, e.toString(), null); //e.message ??
    } finally {
      client.close();
    }
  }

  Future<ApiResource<R>> postData<T extends ApiObject<dynamic>, R>(
      T obj, String url, Map<dynamic, dynamic> jsonMap, String? token) async {
    final Client client = http.Client();
    try {
      Map<String, String> headers;
      if (token == "") {
        headers = {'content-type': 'application/json'};
      } else {
        headers = {
          'content-type': 'application/json',
          'Authorization': 'Bearer $token'
        };
      }
      final Response response = await client
          .post(Uri.parse(url),
              headers: headers, body: const JsonEncoder().convert(jsonMap))
          .catchError((dynamic e) {
        debugPrint("==========>Catch ${e.toString()}<=======");
      });

      final ApiResponse apiResponse = ApiResponse(response);

      debugPrint("==========>Catch Url $url<=======");
      debugPrint("==========> ${json.decode(response.body)['data']}<=======");

      if (apiResponse.isSuccessful()) {
        final dynamic hashMap, message;
        hashMap = json.decode(response.body)['data'];
        message = json.decode(response.body);
        debugPrint("==========>Body Message ${message['message']}<=======");
        if (hashMap != null) {
          if (hashMap is! Map) {
            final List<T> tList = <T>[];
            hashMap.forEach((dynamic data) {
              tList.add(obj.fromMap(data));
            });
            return ApiResource<R>(
                ApiStatus.SUCCESS, message['message'], tList as R? ?? R as R?);
          } else {
            return ApiResource<R>(
                ApiStatus.SUCCESS, message['message'], obj.fromMap(hashMap));
          }
        } else {
          return ApiResource<R>(
              ApiStatus.SUCCESS, message['message'], obj.fromMap(hashMap));
        }
      } else {
        return ApiResource<R>(ApiStatus.ERROR, apiResponse.errorMessage, null);
      }
    } catch (e) {
      debugPrint("==========>Catch ${e.toString()}<=======");

      return ApiResource<R>(ApiStatus.ERROR, e.toString(), null); //e.message ??
    } finally {
      client.close();
    }
  }

  Future<ApiResource<R>> postListData<T extends ApiObject<dynamic>, R>(
      T obj, String url, List<Map<dynamic, dynamic>> jsonMap) async {
    final Client client = http.Client();
    try {
      final Response response = await client
          .post(Uri.parse(url),
              headers: <String, String>{'content-type': 'application/json'},
              body: const JsonEncoder().convert(jsonMap))
          .catchError((dynamic e) {
        debugPrint("==========>Catch ${e.toString()}<=======");
      });

      final ApiResponse apiResponse = ApiResponse(response);

      if (apiResponse.isSuccessful()) {
        final dynamic hashMap = json.decode(response.body);

        if (hashMap is! Map) {
          final List<T> tList = <T>[];
          hashMap.forEach((dynamic data) {
            tList.add(obj.fromMap(data));
          });
          return ApiResource<R>(ApiStatus.SUCCESS, '', tList as R? ?? R as R?);
        } else {
          return ApiResource<R>(ApiStatus.SUCCESS, '', obj.fromMap(hashMap));
        }
      } else {
        return ApiResource<R>(ApiStatus.ERROR, apiResponse.errorMessage, null);
      }
    } catch (e) {
      debugPrint("==========>Catch ${e.toString()}<=======");
      return ApiResource<R>(ApiStatus.ERROR, e.toString(), null); //e.message ??
    } finally {
      client.close();
    }
  }
}
