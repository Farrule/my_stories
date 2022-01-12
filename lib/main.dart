import 'package:flutter/material.dart';
import 'package:my_stories/components/provider/album.dart';
// * theme file
import 'package:my_stories/model/constructors/constructor.dart';
// * route files
import 'package:my_stories/screens/home/home_screen.dart';
import 'package:my_stories/screens/welcome/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<AlbumData>(
  create: (context) => AlbumData(),
  child: MyApp(),
));

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
