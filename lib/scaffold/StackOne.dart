import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_stack_navigator/scaffold/StackTwo.dart';

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
      child: SafeArea(
        child: Center(
          child: CupertinoButton(
            color: Colors.blueAccent,
            child: Text("View StackTwo"),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => StackTwo()),
              );
            },
          ),
        ),
      ),
    );
  }
}
