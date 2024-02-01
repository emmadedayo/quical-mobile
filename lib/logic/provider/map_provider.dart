// import 'dart:async';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirebaseStoreLocationModel {
//   GeoPoint? location;
//   String? rideDistance;
//   String? rideTime;
//   String? rideID;

//   FirebaseStoreLocationModel({
//     required this.location,
//     required this.rideDistance,
//     required this.rideTime,
//     required this.rideID,
//   });

//   FirebaseStoreLocationModel.fromJson(json)
//       : location = json['location'] as GeoPoint?,
//         rideDistance = json['ride_distance'] as String?,
//         rideTime = json['ride_duration'] as String?,
//         rideID = json['ride_id'] as String?;

//   Map<String, dynamic> toMap() {
//     return {
//       'location': location,
//       'ride_distance': rideDistance,
//       'ride_duration': rideTime,
//       'ride_id': rideID,
//     };
//   }
// }


// class OrderProvider extends ChangeNotifier {
//   GoogleMapController? mapController;
//   Set<Marker> markers = HashSet();
//   Set<Polyline> polyLines = <Polyline>{};
//   Position? currentPosition;
//   StreamSubscription<DocumentSnapshot>? eventListener;

//   Future<void> initLocation() async {
//     if (await Geolocator.isLocationServiceEnabled()) {
//       await Firebase.initializeApp();
//       getLocation();
//     } else {
//       // Handle case when location service is disabled
//     }
//   }

//   getLocation() {
//     Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.best,
//     ).then((Position position) async {
//       currentPosition = position;
//       // Update markers, etc. here
//       notifyListeners();
//     }).catchError((e) {
//       // Handle error when getting location
//     });
//   }

//   void onMoveCamera(CameraPosition position) {
//     // Move camera logic here
//   }

//   void startDriverLocationListener(id) {
//     eventListener = FirebaseFirestore.instance
//         .collection('RideLocation')
//         .doc(id)
//         .snapshots()
//         .listen((DocumentSnapshot documentSnapshot) {
//       if (documentSnapshot.exists) {
//         final firebaseStoreLocationModel =
//             FirebaseStoreLocationModel.fromJson(documentSnapshot.data());
//         // Process the firebaseStoreLocationModel here
//         markers.removeWhere((m) => m.markerId.value == 'driverPin');
//         markers.add(Marker(
//           markerId: const MarkerId('driverPin'),
//           position: LatLng(
//             firebaseStoreLocationModel?.location?.latitude ?? 0.0,
//             firebaseStoreLocationModel?.location?.longitude ?? 0.0,
//           ),
//           // Add customIconC here if needed
//         ));

//         Future.delayed(const Duration(milliseconds: 200), () async {
//           mapController?.animateCamera(
//             CameraUpdate.newLatLng(
//               LatLng(
//                 firebaseStoreLocationModel?.location?.latitude ?? 0.0,
//                 firebaseStoreLocationModel?.location?.longitude ?? 0.0,
//               ),
//             ),
//           );
//         });
//       } else {
//         print('Document does not exist in the database');
//       }
//     });
//   }

//   void stopDriverLocationListener() {
//     eventListener?.cancel();
//   }

//   // ... (other methods)
// }
