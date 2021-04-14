import 'package:flutter/widgets.dart';
import 'package:icon_ibox/ui/Home/homeScreen.dart';
import 'package:icon_ibox/ui/POP/PopScreen.dart';
import 'package:icon_ibox/ui/Task/TaskScreen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  PopScreen.routeName: (context) => PopScreen(),
  TaskScreen.routeName: (context) => TaskScreen()
};