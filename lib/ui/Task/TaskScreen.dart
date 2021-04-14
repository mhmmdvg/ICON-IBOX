import 'package:flutter/material.dart';

import 'component/TaskBody.dart';

class TaskScreen extends StatefulWidget {
  static String routeName = '/task_screen';

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}

