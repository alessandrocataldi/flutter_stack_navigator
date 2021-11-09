import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Shopping Bag"),
        transitionBetweenRoutes: true,
        automaticallyImplyLeading: true,
        previousPageTitle: "Back",
      ),
      child: SafeArea(
        child: Center(
          child: Text("Search"),
        ),
      ),
    );
  }
}
