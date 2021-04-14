import 'package:flutter/material.dart';
import 'package:icon_ibox/ui/Home/homeScreen.dart';
import 'package:icon_ibox/ui/POP/PopScreen.dart';
import 'package:icon_ibox/widget/hidenavbar.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final HideNavbar hiding = HideNavbar();
 


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: Column(
        children: <Widget>[
          Text('Menu Home'),
          // (rute != '') ? Container(
          //   height: 393,
          //   width: 700,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: NetworkImage(rute))
          //   ),
          // ) : SizedBox(),
        ],
      ),
      ),
    );
  }
}
