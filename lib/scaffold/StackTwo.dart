import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      child: SafeArea(
        child: Center(
          child: Text("End"),
        ),
      ),
    );
  }
}
