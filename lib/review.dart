import 'package:flutter/material.dart';
import 'stars_generator.dart';

class OwcReview extends StatelessWidget{

  final String pathImage;
  final String dataUserName;
  final String dataUserDetail;
  final String dataUserComment;
  final double dataStars;

  OwcReview(this.pathImage, this.dataUserName, this.dataUserDetail, this.dataUserComment, this.dataStars);

  @override
  Widget build(BuildContext context) {

    final oweUserComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        dataUserComment,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 14,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final oweUserDetail = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        bottom: 3.0
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Text(
              dataUserDetail,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Colors.black54,
              ),
            ),
          ),

          Row(
            children: List.generate(5, (index) => OwcStarsGenerator(dataStars,index,15.0)),
          )
        ],
      )
    );

    final oweUserName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        bottom: 3.0
      ),
      child: Text(
        dataUserName,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final oweListInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        oweUserName,
        oweUserDetail,
        oweUserComment
      ],
    );

    final oweAvatar = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: AssetImage(pathImage),
      ),
    );

    final render = Row(
      children: <Widget>[
        oweAvatar,
        oweListInfo
      ],
    );

    return render;
  }

}