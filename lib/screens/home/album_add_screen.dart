import 'package:flutter/material.dart';
import 'package:my_stories/model/album_model.dart';

class AlbumAddScreen extends StatelessWidget {
  const AlbumAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink[400],
        title: Text('アルバムを追加',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Text('アルバムの名前を入力してください'),
            ),
            AlbumInput(),
          ],
        ),
      ),
    );
  }
}
