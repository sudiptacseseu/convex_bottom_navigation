import 'package:flutter/material.dart';

import 'views/custom_convex_bottom_navigation.dart';

void main() => runApp(BottomNavigationApp());

class BottomNavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConvexBottomNavigation(),
      routes: {
        "/": (context) => ConvexBottomNavigation(),
      },
    );
  }
}
