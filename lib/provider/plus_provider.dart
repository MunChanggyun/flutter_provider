import 'package:flutter/material.dart';

class plusProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count += 1;

    notifyListeners();
  }
}
