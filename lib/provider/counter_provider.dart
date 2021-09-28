import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider(String base) {
    if (int.tryParse(base) != null) this._counter = int.parse(base);
  }
  int _counter = 15;

  void increment() {
    this._counter++;
    notifyListeners();
  }

  void decrement() {
    this._counter--;
    notifyListeners();
  }

  get counter {
    return this._counter;
  }
}
