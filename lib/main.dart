import 'package:flutter/material.dart';
// * theme file
import 'package:my_stories/theme.dart';
// * route files
import 'package:my_stories/screens/home.dart';
import 'package:my_stories/screens/welcome/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_stories',
      theme: ThemeData(
        primaryColor: Colors.pink[400],
      ),
      home: WelcomeScreen(),
    );
  }
}
