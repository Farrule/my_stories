import 'package:flutter/material.dart';

class AlbumData with ChangeNotifier {
  final _album = <String>[];

  List<String> get album => _album;
  int get albumCount => _album.length;

  String getAlbum(int index) {
    return _album[index];
  }

  void addAlbum(String album) {
    _album.add(album);
    notifyListeners();
  }
}
