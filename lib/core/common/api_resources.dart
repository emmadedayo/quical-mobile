import 'package:quical/core/common/api_status.dart';

class ApiResource<T> {
  ApiResource(this.status, this.message, this.data) {
    if (message.contains('##')) {
      /**
       * Backend will reply error code within message
       * Error code and message are seperated with '##' sign
       *
       * Error code 10001 = // Totally No Record
       * Error code 10002 = // No More Record at pagination
       */

      final List<String> messageList = message.split('##');
      if ( messageList.length > 1) {
        errorCode = messageList[0];
        message = messageList[0];
      }
    }
  }
  // ApiResource(this.status, this.errorCode, this.message, this.data);
  ApiStatus status;

  String message = '';
  String errorCode = '';
  T? data;

// @override
// bool operator ==(dynamic other) {
//   debugPrint('other : ${other.data.hashCode}');
//   debugPrint('me : ${data.hashCode}');
//   return other.data == data;
// }

// @override
// int get hashCode {
//   if (data is List) {
//     final List d = data as List;
//     int i = d.length;
//   }
//   return hash2(data.hashCode, data.hashCode);
// }

// get length => null;
}
