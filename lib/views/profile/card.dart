import 'package:flutter/material.dart';

class OwcCard extends StatelessWidget {

  final String imagePath;
  final String dataName;
  final String dataDescription;
  final String dataSteps;

  OwcCard(this.imagePath, this.dataName, this.dataDescription, this.dataSteps);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 90.0,
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
          width: 260.0,
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
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 15.0),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.dataName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.00
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6.0),

                      child: Text(
                        this.dataDescription,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0
                        ),
                      ),
                    ),

                    Text(
                      "Steps $dataSteps",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                
                Align(
                  alignment: Alignment(1.1, 2.7),
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.favorite,
                      size: 20.0,
                    ),
                    backgroundColor: Color(0xFF11DA53),
                    mini: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}