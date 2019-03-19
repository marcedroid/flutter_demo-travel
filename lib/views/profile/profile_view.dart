import 'package:demo_travel/views/profile/card.dart';
import 'package:flutter/material.dart';
import 'header.dart';

class ProfileView extends StatelessWidget {

  Widget oweGradient = Container(
    height: 450.0,
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        oweGradient,
        ListView(
          children: <Widget>[
            Header(),
              OwcCard("assets/images/photos/photo-1.jpg", "Knuckless Mountain Range", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id pulvinar nibh.", "134,554,432"),
              OwcCard("assets/images/photos/photo-2.jpg", "Rockpond Dorton", "Suspendisse potenti. Vestibulum a orci metus. Nulla facilisi. Donec tristique nisl eu mattis cursus.", "134,554,432"),
              OwcCard("assets/images/photos/photo-3.jpg", "Morpond Whiteham", "Fusce sit amet orci et erat rutrum blandit id nec odio.", "134,554,432"),
              OwcCard("assets/images/photos/photo-4.jpg", "Magedell Springston", "Duis mollis mattis iaculis. Vivamus elementum, libero in ullamcorper congue, ante est maximus mauris, ac ullamcorper velit ligula a mi.", "134,554,432"),
              OwcCard("assets/images/photos/photo-5.jpg", "Eastedge Flowercliff", "Curabitur mauris purus, mollis lobortis nulla eget, eleifend placerat leo.", "134,554,432"),
            ],
          ),
      ],
    );
  }

}