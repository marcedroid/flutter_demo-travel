import 'package:flutter/material.dart';
import 'review.dart';

class OwcReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        new OwcReview("assets/images/avatar.jpg","Varuna Yasas", "1 review - 5 photos", "There is an amazing place in Sri Lanka", 5),
        new OwcReview("assets/images/avatar.jpg","Yasas Varuna", "3 review - 7 photos", "There is an amazing place in Sri Lanka", 4)
      ],
    );
  }

}