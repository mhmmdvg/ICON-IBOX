import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';


class ButtonClose extends StatelessWidget {
  const ButtonClose({
    Key key, this.press,
  }) : super(key: key);

  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF8B8B8B)
      ),
      child: IconButton(
        iconSize: 80,
        icon: Icon(
          FlevaIcons.close,
          color: Colors.white,
        ),
        onPressed: press
      ),
    );
  }
}