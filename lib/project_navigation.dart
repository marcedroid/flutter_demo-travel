import 'package:flutter/material.dart';

class ProjectNavigation extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ProjectNavigation();
  }

}

class _ProjectNavigation extends State<ProjectNavigation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Container(height: 0.0)
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
        )
      ),
    );
  }

}