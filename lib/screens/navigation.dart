import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_buddy/screens/explore_screen.dart';
import 'package:tourist_buddy/screens/favorite_screen.dart';
import 'package:tourist_buddy/screens/second_screen.dart';

class MyBottomNaigationBar extends StatefulWidget {
  const MyBottomNaigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNaigationBarState createState() => _MyBottomNaigationBarState();
}

class _MyBottomNaigationBarState extends State<MyBottomNaigationBar> {
  late int _currentIndex;
  late List<Widget> _children;

  @override
  void initState() {
    _currentIndex = 0;
    _children = [SecondScreen(), ExploreScreen(), FavoriteScreen()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: Text("Screen 1").toString()),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: Text("Screen 2").toString()),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: Text("Screen 3").toString())
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return SafeArea(
                  top: false,
                  bottom: false,
                  child: CupertinoApp(
                    home: CupertinoPageScaffold(
                      resizeToAvoidBottomInset: false,
                      child: _children[_currentIndex],
                    ),
                  ));
            },
          );
        });
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
