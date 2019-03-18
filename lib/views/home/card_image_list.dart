import 'package:flutter/material.dart';
import 'package:demo_travel/views/home/card_image.dart';

class OwcCardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final oweRender = Container(
      height: 250.0,
      margin: EdgeInsets.only(
        top: 100.0,
      ),
      child: ListView(
        padding: EdgeInsets.only(
          top: 25.0,
          left: 10.0,
          right: 25.0,
          bottom: 25.0
        ),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          OwcCardImage("assets/images/photos/photo-5.jpg"),
          OwcCardImage("assets/images/photos/photo-4.jpg"),
          OwcCardImage("assets/images/photos/photo-3.jpg"),
          OwcCardImage("assets/images/photos/photo-2.jpg"),
          OwcCardImage("assets/images/photos/photo-1.jpg")
        ],
      ),
    );

    return oweRender;
  }

}