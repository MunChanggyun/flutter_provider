import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider_sample/model/album.dart';
import 'package:http/http.dart' as http;

class AlbumProvider with ChangeNotifier {
  final List<Album> _albumList = List.empty(growable: true);

  List<Album> get alList => _albumList;

  List<Album> getAlbumList() {
    // fetchAlbums();
    return _albumList;
  }

  void addList() {
    _albumList.add(Album(userId: 999999, id: 88888888, title: 'test'));
    notifyListeners();
  }

  void fetchAlbums() async {
    print('fetch album');

    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    final List<Album> result = jsonDecode(response.body).map<Album>((json) => Album.fromJson(json)).toList();

    _albumList.clear();
    _albumList.addAll(result);

    notifyListeners();
  }
}
