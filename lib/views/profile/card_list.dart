import 'package:flutter/material.dart';
import 'card.dart';

class OwcCarlList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        OwcCard("assets/images/photos/photo-1.jpg"),
        OwcCard("assets/images/photos/photo-2.jpg"),
        OwcCard("assets/images/photos/photo-3.jpg"),
        OwcCard("assets/images/photos/photo-4.jpg"),
        OwcCard("assets/images/photos/photo-5.jpg"),
      ],
    );
  }

}