import 'package:demo_travel/views/home/home_view.dart';
import 'package:demo_travel/views/profile/profile_view.dart';
import 'package:demo_travel/views/search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProjectNavigationCupertino extends StatelessWidget {

  final int navigationIndex = 0;

  static final List<Widget> navigationWidget = [
    HomeView(),
    SearchView(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            activeColor: Colors.purple,
            currentIndex: navigationIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person)
              )
            ]
          ),
          tabBuilder: (BuildContext context, int index){
            return CupertinoTabView(
              builder: (BuildContext context) => navigationWidget[index]
            );
          }
      ),
    );
  }

}