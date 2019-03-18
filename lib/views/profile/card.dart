import 'package:flutter/material.dart';

class OwcCard extends StatelessWidget {

  final String imagePath;

  OwcCard(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 80.0,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20.0,
            offset: Offset(0.0, 10.0)
          )
        ],
        image: DecorationImage(
          image: AssetImage(this.imagePath),
          fit: BoxFit.cover
        )
      ),
      child: Align(
        alignment: Alignment(0.0, 1.9),
        child: Container(
          width: 250.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            boxShadow: <BoxShadow> [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 20.0,
                offset: Offset(0.0, 7.0)
              )
            ],
          ),
          child: Text("URL"),
        ),
      ),
    );
  }

}