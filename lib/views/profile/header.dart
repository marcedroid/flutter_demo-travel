import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  Widget oweGradient = Container(
    height: 420.0,
    decoration: BoxDecoration(
        gradient: RadialGradient(
            colors: [
              Color(0xFF4f57d3),
              Color(0xFF4f63d4),
            ],
            radius: 0.9,
            stops: [0.99, 1.0],
            center: Alignment(1.3, 0.5)
        )
    ),
  );

  Widget oweProfileTxt = Container(
    margin: EdgeInsets.only(
      top: 70.0,
      left: 25.0,
      right: 25.0
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
            "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),
        ),
        Icon(
          Icons.settings,
          size: 14.0,
          color: Color.fromRGBO(255, 255, 255, 0.7),
        )
      ],
    ),
  );

  Widget oweProfileData = Container(
    margin: EdgeInsets.only(
      left: 25.0,
      right: 25.0,
      top: 20.0
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 85.0,
          height: 85.0,
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2.0)
          ),
          child: CircleAvatar(backgroundImage: AssetImage("assets/images/avatars/avatar-4.jpg")),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Pathum Tzoo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "pathumtzoo1@gmail.com",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.75),
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
                height: 1.2
              ),
            )
          ],
        )
      ],
    ),
  );

  Widget oweButtons = Container(
    margin: EdgeInsets.only(
      top: 20.0,
      left: 25.0,
      right: 25.0
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          mini: true,
          child: Icon(
            Icons.bookmark_border,
            color: Colors.indigo,
          ),
          disabledElevation: 0.0,
          backgroundColor: Colors.white,
        ),

        FloatingActionButton(
          mini: true,
          child: Icon(
            Icons.calendar_today,
            color: Colors.indigo
          ),
          disabledElevation: 0.0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
        ),

        FloatingActionButton(
          mini: false,
          child: Icon(
            Icons.add,
            color: Colors.indigo,
            size: 40.0,
          ),
          disabledElevation: 0.0,
          backgroundColor: Colors.white,
        ),

        FloatingActionButton(
          mini: true,
          child: Icon(
            Icons.email,
            color: Colors.indigo
          ),
          disabledElevation: 0.0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
        ),

        FloatingActionButton(
          mini: true,
          child: Icon(
            Icons.person,
            color: Colors.indigo,
          ),
          disabledElevation: 0.0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        oweGradient,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            oweProfileTxt,
            oweProfileData,
            oweButtons
          ],
        )
      ],
    );
  }

}