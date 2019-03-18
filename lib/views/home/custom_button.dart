import 'package:flutter/material.dart';

class OwcCustomButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final oweRender = Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 25.0,
          bottom: 10.0
      ),

      child: InkWell(
        onTap: (){
          Scaffold.of(context).showSnackBar(
              SnackBar(
                  content: Text("Navegando...")
              )
          );
        },

        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF4268D3),
                    Color(0xFF584CD1)
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.5),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp
              ),
              borderRadius: BorderRadius.all(Radius.circular(30.0))
          ),
          width: 180.0,
          height: 50.0,
          child: Center(
            child: Text(
              "Navigate",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Lato",
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );

    return oweRender;
  }

}