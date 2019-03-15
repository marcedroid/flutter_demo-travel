import 'package:flutter/material.dart';

class OwcCardImage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final cardImage = Container(
      width: 300.0,
      height: 220.0,
      margin: EdgeInsets.only(
        top: 120.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0.0, 7.0),
            blurRadius: 15.0
          )
        ],
        image: DecorationImage(
          image: AssetImage("assets/images/photos/photo-2.jpg"),
          fit: BoxFit.cover
        )
      ),
    );

    return cardImage;
  }

}