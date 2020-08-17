import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'state_container.dart';

void main(){
  runApp(StateContainer(child: new HomeApp(),));
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Theme.of(context).accentColor;

    return MaterialApp(
      title: 'Demo',
      home: new HomeScreen(),
    );
  }
}