import 'package:icon_ibox/model/notificationModel.dart';
import 'package:icon_ibox/ui/Task/TaskScreen.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:icon_ibox/constants.dart';
import 'package:icon_ibox/ui/Activity/activityScreen.dart';
import 'package:icon_ibox/widget/hidenavbar.dart';
import 'package:icon_ibox/helper/globals.dart' as globals;

import 'component/homeScreen_body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // static final String oneSignalAppId = "69c446cf-3035-45ea-b430-50d95200f565";
  final HideNavbar hiding = HideNavbar();
  int _selectedItemPosition = 0;

  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  //Navigation Route//
  static List<Widget> _widgetOptions = <Widget>[Body(), ActivityScreen()];

  @override
  void initState() {
    super.initState();
    // initPlatformState();

    OneSignal.shared
        .setNotificationReceivedHandler((OSNotification notification) {
      setState(() {
        NotificationModel.title = notification.payload.title;
        NotificationModel.content = notification.payload.body;
        NotificationModel.rute = notification.payload.additionalData["route"];
      });
    });

    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      NotificationModel.title = result.notification.payload.title;
      NotificationModel.content = result.notification.payload.body;
      NotificationModel.rute =
          result.notification.payload.additionalData["route"];
      globals.appNavigator.currentState.pushNamed("/task_screen");
      // Navigator.pushNamed(context, '/task_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: _widgetOptions.elementAt(_selectedItemPosition),
      ),
      extendBody: true,
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.floating,
        backgroundColor: kPrimaryColor,
        height: 60,
        elevation: 4,
        snakeShape: SnakeShape.circle,
        shape: bottomBarShape,
        padding: EdgeInsets.fromLTRB(30, 0, 30, 23),
        snakeViewColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(icon: Icon(FlevaIcons.home_outline)),
          BottomNavigationBarItem(icon: Icon(FlevaIcons.activity)),
          BottomNavigationBarItem(icon: Icon(FlevaIcons.settings_outline)),
        ],
      ),
    );
  }

  // Future<void> initPlatformState() async {
  //   OneSignal.shared.init(
  //     oneSignalAppId,
  //   );
  //   OneSignal.shared
  //       .setInFocusDisplayType(OSNotificationDisplayType.notification);

  //   OneSignal.shared
  //       .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
  //     var title = result.notification.payload.title;
  //     var content = result.notification.payload.body;
  //     var data = result.notification.payload.additionalData;

  //     globals.appNavigator.currentState.push(
  //       MaterialPageRoute(
  //           builder: (context) => TaskScreen(
  //               title: title,
  //               content: content,
  //               rute: data['route'].toString())),
  //     );
  //   });
  // }
}
