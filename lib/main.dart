import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_stack_navigator/scaffold/ShoppingBag.dart';
import 'package:flutter_stack_navigator/scaffold/home.dart';
import 'package:flutter_stack_navigator/scaffold/search.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Stack Navigator",
      theme: CupertinoThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: ScaffoldMain(),
    );
  }
}

class ScaffoldMain extends StatefulWidget {
  const ScaffoldMain({Key? key}) : super(key: key);
  @override
  _ScaffoldMainState createState() => _ScaffoldMainState();
}

class _ScaffoldMainState extends State<ScaffoldMain> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag),
            label: "Shopping Bag",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return Home();
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: Search(),
                );
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return ShoppingBag();
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return Home();
              },
            );
        }
      },
    );
  }
}
