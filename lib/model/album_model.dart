
import 'package:flutter/material.dart';
import 'package:my_stories/components/provider/album.dart';
import 'package:provider/provider.dart';

class AlbumList extends StatelessWidget {
  const AlbumList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => Divider(color: Colors.black),
      itemCount: Provider.of<AlbumData>(context).albumCount,
      itemBuilder: (BuildContext context, int index) {
        return AlbumListTile(index: index);
      },
    );
  }
}

class AlbumListTile extends StatelessWidget {
  const AlbumListTile({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<AlbumData>(builder: (context, albumData, child) {
      final currentAlbum = albumData.getAlbum(index);
      return ListTile(
        title: Text(currentAlbum),
      );
    });
  }
}

class AlbumInput extends StatelessWidget {
  const AlbumInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        onSubmitted: Provider.of<AlbumData>(context, listen: false).addAlbum,
      ),
    );
  }
}
