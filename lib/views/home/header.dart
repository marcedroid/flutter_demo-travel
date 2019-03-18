import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class OwcHeader extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final oweRender = Stack(
      children: <Widget>[
        OwcGradientBack(),
        OwcCardImageList()
      ],
    );

    return oweRender;
  }

}