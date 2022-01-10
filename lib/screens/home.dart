import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Text(
          'My Stories',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.library_add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.group_add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'null',
            ),
          ],
        ),
      ),
    );
  }
}
