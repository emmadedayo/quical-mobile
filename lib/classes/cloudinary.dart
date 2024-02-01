// import 'dart:io';
// import 'package:cloudinary_sdk/cloudinary_sdk.dart';
// import 'package:flutter/material.dart';
//
// class CloudinaryImage {
//
//   Cloudinary? cloudinaryClient;
//   String? apiUrl;
//   String? apiKey;
//   String? apiSecret;
//   String? cloudName;
//
//   void initCloudinary({
//     String apiUrl = 'cloudinary://975568434126979:y37Zi1IvYKLVvylZwk_YZStWeo8@dcdcxof9b',
//     String apiKey = '975568434126979',
//     String apiSecret = 'y37Zi1IvYKLVvylZwk_YZStWeo8',
//     String cloudName = 'dcdcxof9b',
//     Cloudinary? cloudinaryClient,
//   }) {
//     this.apiUrl = apiUrl;
//     this.apiKey = apiKey;
//     this.apiSecret = apiSecret;
//     this.cloudName = cloudName;
//     this.cloudinaryClient = Cloudinary.full(apiUrl: 'cloudinary://975568434126979:y37Zi1IvYKLVvylZwk_YZStWeo8@dcdcxof9b', apiKey: apiKey, apiSecret: apiSecret, cloudName: cloudName);
//   }
//
//   Future<String?> uploadImage(File image, folderName) async {
//     debugPrint('uploadImage: $image');
//
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
//      print("lkfnjbhvgbjnfk $response");
//         return response?.secureUrl;
//   }
//
// }
