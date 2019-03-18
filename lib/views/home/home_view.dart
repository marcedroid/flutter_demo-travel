import 'package:demo_travel/views/home/description_place.dart';
import 'package:demo_travel/views/home/header.dart';
import 'package:demo_travel/views/home/review_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  String dataDescription = "Vivamus pharetra metus non nulla iaculis cursus. Integer eleifend, massa sit amet rutrum venenatis, purus ex venenatis dui, vel congue enim arcu convallis nunc.\n\nPraesent non sem in dui accumsan rutrum. Nulla molestie neque quis ex semper, et commodo est suscipit.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            OwcDescriptionPlace("Duwili Ella de fild feef",4.5,dataDescription),
            OwcReviewList()
          ],
        ),
        OwcHeader()
      ],
    );
  }

}