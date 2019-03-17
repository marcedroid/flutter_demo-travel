import 'package:flutter/material.dart';

class OwcHeartButton extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _OwcHeartButton();
  }

}

class _OwcHeartButton extends State<OwcHeartButton> {

  bool _isFav = false;

  void oweOnPressed (){
    setState(() {
      _isFav = !this._isFav;
    });
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      child: Icon(this._isFav?Icons.favorite:Icons.favorite_border),
      onPressed: oweOnPressed,
    );
  }

}