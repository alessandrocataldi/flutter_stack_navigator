import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ShoppingBag extends StatelessWidget {
  const ShoppingBag({Key? key}) : super(key: key);

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
          child: Text("Shopping Bag"),
        ),
      ),
    );
  }
}
