import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{

  final String dataName;
  final double dataStars;
  final String dataDescription;

  DescriptionPlace(this.dataName, this.dataStars, this.dataDescription);

  @override
  Widget build(BuildContext context) {

    Widget buildStar(int index){
      return Container(
        margin: EdgeInsets.only(
            top: 2.0,
            right: 3.0
        ),
        child: Icon(
          (index>=dataStars) ? Icons.star_border : (index>dataStars-1 && index<dataStars) ? Icons.star_half : Icons.star,
          color: Colors.yellow,
        )
      );
    }

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        dataDescription,
        style: TextStyle(
          height: 1.2,
          fontSize: 16.0
        ),
      ),
    );

    final titleAndStars = Container(
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
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0
              ),
              textAlign: TextAlign.left,
            ),
          ),

          Row(
            children: List.generate(5, (index) => buildStar(index)),
          ),

        ],
      ),
    );

    final render = Column(
      children: <Widget>[
        titleAndStars,
        description
      ],
    );

    return render;
  }

}