import 'package:flutter/material.dart';
import 'header.dart';
import 'card_list.dart';

class ProfileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Header(),
        Container(
          margin: EdgeInsets.only(top: 300.0),
          child: OwcCarlList(),
        )
      ],
    );
  }

}