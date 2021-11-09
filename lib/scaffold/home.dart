import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_stack_navigator/scaffold/StackOne.dart';

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
      child: SafeArea(
        child: Center(
          child: CupertinoButton(
            color: Colors.blueAccent,
            child: Text("View StackOne"),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => StackOne()),
              );
            },
          ),
        ),
      ),
    );
  }
}
