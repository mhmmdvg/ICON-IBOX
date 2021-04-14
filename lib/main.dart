import 'package:flutter/material.dart';
import 'package:icon_ibox/model/notificationModel.dart';
import 'package:icon_ibox/routes.dart';
import 'package:icon_ibox/theme.dart';
import 'package:icon_ibox/ui/Home/homeScreen.dart';
import 'package:icon_ibox/ui/Task/TaskScreen.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:icon_ibox/helper/globals.dart' as globals;

void main() {
  
  globals.appNavigator = GlobalKey<NavigatorState>();

  WidgetsFlutterBinding.ensureInitialized();

  OneSignal.shared
      .init("7a3de361-91fe-4fd4-8769-7aef81c424f4", iOSSettings: null);
  // OneSignal.shared
  //     .init("69c446cf-3035-45ea-b430-50d95200f565", iOSSettings: null);

  OneSignal.shared
      .setInFocusDisplayType(OSNotificationDisplayType.notification);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      navigatorKey: globals.appNavigator,
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
