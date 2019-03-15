import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';
import 'card_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String dataDescription = "Vivamus pharetra metus non nulla iaculis cursus. Integer eleifend, massa sit amet rutrum venenatis, purus ex venenatis dui, vel congue enim arcu convallis nunc.\n\nPraesent non sem in dui accumsan rutrum. Nulla molestie neque quis ex semper, et commodo est suscipit.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        //appBar: AppBar(title: Text("Flutter")),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                OwcDescriptionPlace("Duwili Ella de fild feef",4.5,dataDescription),
                OwcReviewList()
              ],
            ),

            OwcGradientBack(),
            OwcCardImage()
          ],
        )
      ),
    );
  }
}