abstract class ApiObject<T> {
  String? key = '0';

  T fromMap(dynamic dynamicData);

  Map<String, dynamic>? toMap(T object);

  List<T> fromMapList(List<dynamic> dynamicDataList);

  List<Map<String, dynamic>?> toMapList(List<T> objectList);
}
