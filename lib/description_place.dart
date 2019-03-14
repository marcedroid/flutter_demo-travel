import 'package:flutter/material.dart';
import 'stars_generator.dart';

class OwcDescriptionPlace extends StatelessWidget{

  final String dataName;
  final double dataStars;
  final String dataDescription;

  OwcDescriptionPlace(this.dataName, this.dataStars, this.dataDescription);

  @override
  Widget build(BuildContext context) {

    final oweDescription = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        dataDescription,
        style: TextStyle(
          fontFamily: "Lato",
          height: 1.2,
          fontSize: 16.0
        ),
      ),
    );

    final oweTitleAndStars = Container(
      margin: EdgeInsets.only(top: 320.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: 20.0,
                right: 20.0
            ),
            child: Text(
              dataName,
              style: TextStyle(
                fontFamily: "Lato",
                fontWeight: FontWeight.w900,
                fontSize: 30.0
              ),
              textAlign: TextAlign.left,
            ),
          ),

          Row(
            children: List.generate(5, (index) => new OwcStarsGenerator(dataStars,index,30.0)),
          ),

        ],
      ),
    );

    final oweRender = Column(
      children: <Widget>[
        oweTitleAndStars,
        oweDescription
      ],
    );

    return oweRender;
  }

}