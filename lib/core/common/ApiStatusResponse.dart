import 'package:quical/core/common/api_response_object.dart';
import 'package:quiver/core.dart';

class ApiStatusResponse extends ApiObject<ApiStatusResponse?> {
  ApiStatusResponse({
    this.status,
    this.message,
  });

  bool? status;
  String? message;

  @override
  bool operator ==(dynamic other) =>
      other is ApiStatusResponse && status == other.status;

  @override
  int get hashCode => hash2(status.hashCode, status.hashCode);

  bool? getPrimaryKey() {
    return status;
  }

  @override
  List<ApiStatusResponse?> fromMapList(List<dynamic> dynamicDataList) {
    final List<ApiStatusResponse?> subpropertyByList = <ApiStatusResponse?>[];

    // if (dynamicDataList != null) {
    for (dynamic dynamicData in dynamicDataList) {
      if (dynamicData != null) {
        subpropertyByList.add(fromMap(dynamicData));
      }
    }
    // }
    return subpropertyByList;
  }

  @override
  ApiStatusResponse? fromMap(dynamic dynamicData) {
    if (dynamicData != null) {
      return ApiStatusResponse(
        status: dynamicData['status'],
        message: dynamicData['message'],
      );
    } else {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toMap(ApiStatusResponse? object) {
    if (object != null) {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['status'] = object.status;
      data['message'] = object.message;

      return data;
    } else {
      return null;
    }
  }

  @override
  List<Map<String, dynamic>?> toMapList(List<ApiStatusResponse?> objectList) {
    final List<Map<String, dynamic>?> mapList = <Map<String, dynamic>?>[];
    //if (objectList != null) {
    for (ApiStatusResponse? data in objectList) {
      if (data != null) {
        mapList.add(toMap(data));
      }
    }
    // }
    return mapList;
  }
}
