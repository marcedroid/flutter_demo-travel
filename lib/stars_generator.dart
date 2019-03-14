import 'package:flutter/material.dart';

class OwcStarsGenerator extends StatelessWidget{

  final dataStars;
  final dataIndex;
  final dataSize;

  OwcStarsGenerator(this.dataStars, this.dataIndex, this.dataSize);

  @override
  Widget build(BuildContext context) {

    Widget oweBuildStar(int index){
      return Container(
          margin: EdgeInsets.only(
              top: 2.0,
              right: 3.0
          ),
          child: Icon(
            (index>=dataStars) ? Icons.star_border : (index>dataStars-1 && index<dataStars) ? Icons.star_half : Icons.star,
            color: Colors.yellow,
            size: dataSize,
          )
      );
    }

    return oweBuildStar(dataIndex);
  }

}