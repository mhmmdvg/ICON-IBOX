import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ButtonOK extends StatelessWidget {
  const ButtonOK({
    Key key, this.press,
  }) : super(key: key);

  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green
      ),
      child: IconButton(
        iconSize: 80,
        icon: Icon(
          EvaIcons.checkmark,
          color: Colors.white,
        ),
        onPressed: press
      ),
    );
  }
}
