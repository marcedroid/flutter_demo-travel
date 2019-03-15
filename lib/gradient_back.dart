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
    );

    return render;
  }
}