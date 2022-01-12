import 'package:flutter/material.dart';
import 'package:my_stories/components/provider/album.dart';
import 'package:my_stories/model/album_model.dart';
import 'package:my_stories/screens/home/album_add_screen.dart';
import 'package:my_stories/screens/home/setting_screen.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AlbumData(),
      child: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink[400],
        title: const Text(
          'My Stories',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlbumAddScreen()));
              },
              icon: Icon(Icons.library_add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.group_add)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              icon: Icon(Icons.settings)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: AlbumList(),
            ),
            Divider(
              height: 2,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
