import 'package:flutter/material.dart';
import 'heartButton.dart';

class OwcCardImage extends StatelessWidget{

  final String dataImagePath;
  OwcCardImage(this.dataImagePath);

  @override
  Widget build(BuildContext context) {

    final oweCardImage = Container(
      width: 270.0,
      height: 220.0,
      margin: EdgeInsets.only(
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
          image: AssetImage(dataImagePath),
          fit: BoxFit.cover
        )
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.2),
      children: <Widget>[
        oweCardImage,
        OwcHeartButton()
      ],
    );
  }

}