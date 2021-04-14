import 'package:flutter/material.dart';

import 'component/activityScreen_body.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity"),
      ),
      body: Body(),
    );
  }
}

