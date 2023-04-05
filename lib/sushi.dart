import 'package:flutter/material.dart';

class Sushi extends ChangeNotifier {
  final List _sushiMenu = [
    [
      'Salmon Nigiri',
      '50000',
      'image/salmon.jpg',
      Color.fromARGB(255, 172, 195, 230),
      '',
      1,
    ],
    [
      'Unagi Nigiri',
      '40000',
      'image/eel.jpg',
      Color.fromARGB(255, 172, 195, 230),
      '',
      1,
    ],
    [
      'Hamachi Nigiri',
      '45000',
      'image/hamachi.jpg',
      Color.fromARGB(255, 172, 195, 230),
      '',
      1,
    ],
    [
      'Mackerel Nigiri',
      '35000',
      'image/mackerel.jpg',
      Color.fromARGB(255, 172, 195, 230),
      '',
      1,
    ],
    [
      'Tamago Nigiri',
      '25000',
      'image/tamago.jpg',
      Color.fromARGB(255, 172, 195, 230),
      '',
      1,
    ],
    [
      'Sashimi Platter',
      '60000',
      'image/sashimi.jpeg',
      Color.fromARGB(255, 172, 195, 230),
      '',
      1,
    ],
  ];

  List _summaryList = [];

  void addSummaryList(int index) {
    _summaryList.add(_sushiMenu[index]);
    notifyListeners();
  }

  void removeSummaryList(int index) {
    _summaryList.removeAt(index);
    notifyListeners();
  }

  String calculatePrice() {
    int total = 0;
    for (int i = 0; i < _summaryList.length; i++) {
      total += int.parse(_summaryList[i][1]);
    }
    return total.toString();
  }

  get summaryList => _summaryList;
  get sushiMenu => _sushiMenu;
}
