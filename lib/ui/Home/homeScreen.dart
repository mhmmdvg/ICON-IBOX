import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:icon_ibox/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  
  @override
  Widget build(BuildContext context) {
    int _selectedItemPosition = 0;
    return Scaffold(
      bottomNavigationBar: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          backgroundColor: kPrimaryColor,
          elevation: 4,
          snakeShape: SnakeShape.circle,
          shape: bottomBarShape,
          padding: EdgeInsets.all(30),
          snakeViewColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
          items: [
            BottomNavigationBarItem(icon: Icon(FlevaIcons.home_outline)),
            BottomNavigationBarItem(icon: Icon(FlevaIcons.home_outline)),
            BottomNavigationBarItem(icon: Icon(FlevaIcons.home_outline)),
          ],
      ),   
    );
  }
}
