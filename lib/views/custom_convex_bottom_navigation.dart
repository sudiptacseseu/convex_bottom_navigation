// ignore: must_be_immutable
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:convex_bottom_navigation/utils/hex_to_color.dart';
import 'package:flutter/material.dart';

class ConvexBottomNavigation extends StatefulWidget {
  @override
  _ConvexBottomNavigationState createState() => _ConvexBottomNavigationState();
}

class _ConvexBottomNavigationState extends State<ConvexBottomNavigation> {
  int _page = 0;
  var _selectedIconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Convex Bottom Navigation')),
      body: Container(
        color: Colors.white24,
        child: Center(child: Text('Welcome to Convex Bottom Navigation')),
      ),
      bottomNavigationBar: ConvexAppBar(
        //color: Colors.white,
        elevation: 2.0,
        curveSize: 80.0,
        top: -25,
        height: 55.0,
        backgroundColor: Colors.white,
        activeColor: HexToColor('#0d95f1'),
        style: TabStyle.reactCircle,
        items: [
          TabItem(
            icon: Icon(Icons.menu_book_rounded,
                size: _page != 0 ? 24.0 : 31.0,
                color: _page != 0 ? HexToColor('#606060') : _selectedIconColor),
          ),
          TabItem(
              icon: Icon(
            Icons.insert_drive_file_rounded,
            size: _page != 1 ? 24.0 : 31.0,
            color: _page != 1 ? HexToColor('#606060') : _selectedIconColor,
          )),
          TabItem(
              icon: Icon(Icons.home_rounded,
                  size: _page != 2 ? 24.0 : 31.0,
                  color:
                      _page != 2 ? HexToColor('#606060') : _selectedIconColor)),
          TabItem(
              icon: Icon(Icons.calendar_today_rounded,
                  size: _page != 3 ? 24.0 : 31.0,
                  color:
                      _page != 3 ? HexToColor('#606060') : _selectedIconColor)),
          TabItem(
              icon: Icon(Icons.person_rounded,
                  size: _page != 4 ? 24.0 : 31.0,
                  color:
                      _page != 4 ? HexToColor('#606060') : _selectedIconColor)),
        ],
        initialActiveIndex: 0,
        onTap: (index) {
          setState(() {
            _page = index;
            print('click index=$index');
            _selectedIconColor = Colors.white;
          });
        },
      ),
    );
  }
}
