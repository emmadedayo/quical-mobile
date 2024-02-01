// // ignore_for_file: use_build_context_synchronously

// import 'package:flutter/material.dart';
// import '../../entity/reviews_response.dart';
// import '../../entity/value_holder_entity.dart';
// import '../repository/review_repo.dart';

// class ReviewProvider extends ChangeNotifier {
//   ReviewProvider(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }
//   // init method
//   void init() {
//     fetchReviews();
//   }

//   // dispose method
//   @override
//   void dispose() {
//     //
//     super.dispose();
//   }

//   // declearations

//   ValueHolder? psValueHolder;
//   BuildContext context;
//   bool isDataFetched = false;

//   List<Review> review = <Review>[];

//   // functions to fetch data
//   void fetchReviews() async {
//     isDataFetched = true;
//     notifyListeners();
//     final apiService = ReviewRepository();
//     final response =
//         await apiService.fetchReviews(psValueHolder?.userToken ?? '');
//     if (response.success!) {
//       isDataFetched = false;
//       notifyListeners();
//       review = response.data!;
//       notifyListeners();
//     } else {
//       isDataFetched = false;
//       notifyListeners();
//       print(response.message);
//     }
//   }
// }
