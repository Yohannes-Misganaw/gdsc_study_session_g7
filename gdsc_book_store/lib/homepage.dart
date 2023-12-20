import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageView createState() {
    return MyHomePageView();
  }
}

class MyHomePageView extends MyHomePageState {
  @override
  Widget build(BuildContext context) {
    return Text('MyHomePage');
  }
}

abstract class MyHomePageState extends State<MyHomePage> {
  // TODO: implement state
}
