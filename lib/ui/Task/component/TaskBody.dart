import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:icon_ibox/model/notificationModel.dart';
import 'package:icon_ibox/ui/Task/TaskScreen.dart';
import 'package:icon_ibox/widget/buttonClose.dart';
import 'package:icon_ibox/widget/buttonOK.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String title = NotificationModel.title;

  String content = NotificationModel.content;

  String rute = NotificationModel.rute;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 20, vertical: size.height / 6),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'OpenSans'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  content,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF8B8B8B)),
                ),
                SizedBox(height: size.height / 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonClose(
                      press: () {},
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    ButtonOK(
                      press: () {
                        setState(() {
                          Navigator.pushNamed(context, rute);
                        });
                      },
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
