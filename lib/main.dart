import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: Home(),
                );
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
                return CupertinoPageScaffold(
                  child: ShoppingBag(),
                );
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: Home(),
                );
              },
            );
        }
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Home"),
        transitionBetweenRoutes: true,
        automaticallyImplyLeading: true,
        previousPageTitle: "Back",
      ),
      child: Center(
        child: CupertinoButton(
          color: Colors.blueGrey,
          child: Text("View StackOne"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StackOne()),
            );
          },
        ),
      ),
    );
  }
}

class StackOne extends StatelessWidget {
  const StackOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Stack One"),
        transitionBetweenRoutes: true,
        automaticallyImplyLeading: true,
        previousPageTitle: "Back",
      ),
      child: Center(
        child: CupertinoButton(
          color: Colors.blueGrey,
          child: Text("View StackTwo"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StackTwo()),
            );
          },
        ),
      ),
    );
  }
}

class StackTwo extends StatelessWidget {
  const StackTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: true,
        middle: Text("Stack Two"),
        transitionBetweenRoutes: true,
        previousPageTitle: "Back",
      ),
      child: Center(
        child: Text("End"),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text("Search"),
      ),
    );
  }
}

class ShoppingBag extends StatelessWidget {
  const ShoppingBag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text("Shopping Bag"),
      ),
    );
  }
}
