import 'package:flutter/material.dart';
import 'description_place.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String dataDescription = "Vivamus pharetra metus non nulla iaculis cursus. Integer eleifend, massa sit amet rutrum venenatis, purus ex venenatis dui, vel congue enim arcu convallis nunc. Donec viverra mauris viverra arcu feugiat condimentum. Donec ullamcorper ex sed dolor condimentum lobortis.\n\nPraesent non sem in dui accumsan rutrum. Nulla molestie neque quis ex semper, et commodo est suscipit. Pellentesque orci neque, tempor vitae sodales laoreet, feugiat ut arcu. Suspendisse non lacus vehicula turpis ultricies posuere. Nullam non maximus augue.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: new DescriptionPlace("Duwili Ella",4.5,dataDescription)
      ),
    );
  }
}