import 'package:flutter/material.dart';
import 'package:demo_travel/views/home/home_view.dart';
import 'package:demo_travel/views/search/search_view.dart';
import 'package:demo_travel/views/profile/profile_view.dart';

class ProjectNavigation extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ProjectNavigation();
  }

}

class _ProjectNavigation extends State<ProjectNavigation> {

  int navigationIndex = 0;

  static final List<Widget> navigationWidget = [
    HomeView(),
    SearchView(),
    ProfileView()
  ];

  void changeView (int index){
    setState(() {
      navigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: navigationWidget[navigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.purple,
        currentIndex: navigationIndex,
        onTap: changeView,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Container(height: 0.0)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Container(height: 0.0)
          )
        ]
      ),
    );
  }

}