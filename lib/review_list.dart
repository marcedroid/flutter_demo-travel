import 'package:flutter/material.dart';
import 'review.dart';

class OwcReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new OwcReview("assets/images/avatar-1.jpg","Varuna Yasas", "1 review - 5 photos", "There is an amazing place in Sri Lanka", 5),
        new OwcReview("assets/images/avatar-2.jpg","Yasas Varuna", "3 review - 7 photos", "There is an amazing place in Sri Lanka", 4),
        new OwcReview("assets/images/avatar-3.jpg","Sandra", "3 review - 7 photos", "There is an amazing place in Sri Lanka", 4),
        new OwcReview("assets/images/avatar-4.jpg","Sebastián", "3 review - 7 photos", "There is an amazing place in Sri Lanka", 5),
        new OwcReview("assets/images/avatar-5.jpg","Isabel", "3 review - 7 photos", "There is an amazing place in Sri Lanka", 5)
      ],
    );
  }

}