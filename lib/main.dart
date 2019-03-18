import 'package:flutter/material.dart';
import 'project_navigation.dart';
import 'package:flutter/rendering.dart';

void main(){
  debugPaintSizeEnabled=false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ProjectNavigation()
    );
  }

}