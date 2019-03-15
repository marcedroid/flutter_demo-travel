import 'package:flutter/material.dart';

class OwcGradientBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final render = Container(
      width: double.infinity,
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.2),
          stops: [0.0, 0.7],
          tileMode: TileMode.clamp
        )
      ),

      child: Text(
        "Popular",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Lato",
          fontSize: 30.0,
          fontWeight: FontWeight.w900
        ),
      ),

      alignment: Alignment(-0.8, -0.35),
    );

    return render;
  }
}