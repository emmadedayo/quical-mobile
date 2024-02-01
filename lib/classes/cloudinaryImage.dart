// //create a constructor for the class

// import 'dart:io';
// import 'package:cloudinary_sdk/cloudinary_sdk.dart';
// import 'package:flutter/cupertino.dart';

// class CloudinaryImage {
// // 
//   Cloudinary? cloudinaryClient;
//   String? apiUrl;
//   String? apiKey;
//   String? apiSecret;
//   String? cloudName;

//   // CloudinaryImage(String apiUrl, String apiKey, String apiSecret, String cloudName) {
//   //   this.apiUrl = apiUrl;
//   //   this.apiKey = apiKey;
//   //   this.apiSecret = apiSecret;
//   //   this.cloudName = cloudName;
//   // }
//   //

//   CloudinaryImage({
//     String this.apiUrl = 'cloudinary://975568434126979:y37Zi1IvYKLVvylZwk_YZStWeo8@dcdcxof9b',
//     String this.apiKey = '975568434126979',
//     String this.apiSecret = 'y37Zi1IvYKLVvylZwk_YZStWeo8',
//     String this.cloudName = 'dcdcxof9b',
//     Cloudinary? cloudinaryClient,
//   });

//   //upload image function

//   Future<String?> uploadImage(File image, folderName) async {
//     debugPrint('uploadImage: $image');
//     cloudinaryClient = Cloudinary.full(apiUrl: '', apiKey: apiKey ?? '', apiSecret: apiSecret ?? '', cloudName: cloudName ?? '');
//     final response = await cloudinaryClient?.uploadResource(
//         CloudinaryUploadResource(
//             filePath: image.path,
//             fileBytes: image.readAsBytesSync(),
//             resourceType: CloudinaryResourceType.image,
//             folder: folderName,
//             progressCallback: (count, total) {
//               print(
//                   'Uploading image from file with progress: $count/$total');
//             },
//         )
//     );
//     return response?.secureUrl;
//   }
// }