import 'package:stacked/stacked.dart';

import 'package:flutter/material.dart';
import 'package:todays_rosary/main.dart';
import 'package:todays_rosary/services/mystery_service.dart';
import 'package:todays_rosary/services/prayers_service.dart';

class RosaryViewModel extends BaseViewModel {
  final MysteryService _mysteryService = MysteryService();

  String get mystery => rosaryDay.mysteries;

  List<Mystery> get mysteries =>
      _mysteryService.fetchMystery(rosaryDay.mysteries);

  Map<String, Color?> fetchColorMap() {
    Map<String, Color> colorMap = {
      'red': const Color.fromARGB(255, 244, 27, 63),
      'green': const Color.fromARGB(255, 38, 156, 98),
      'violet': const Color.fromARGB(255, 155, 38, 182),
      'white': const Color.fromARGB(255, 255, 255, 255),
      'black': const Color.fromARGB(255, 0, 0, 0),
      'blue': const Color.fromARGB(255, 121, 37, 117),
      'gray': const Color.fromARGB(255, 92, 94, 134),
    };

    Map<String, Color?> colorSwatch = {
      'primaryColor': colorMap['RED'],
      'secondaryColor': colorMap['GREEN'],
      'txtColor': colorMap['WHITE'],
      'bgColor': colorMap['GRAY'],
    };
    switch (rosaryDay.color) {
      case 'RED':
        colorSwatch['primaryColor'] = colorMap['red'];
        colorSwatch['txtColor'] = colorMap['white'];
        colorSwatch['bgColor'] = colorMap['gray'];
        break;
      case 'GREEN':
        colorSwatch['primaryColor'] = colorMap['green'];
        colorSwatch['txtColor'] = colorMap['white'];
        colorSwatch['bgColor'] = colorMap['gray'];
        break;
      case 'VIOLET':
        colorSwatch['primaryColor'] = colorMap['violet'];
        colorSwatch['txtColor'] = colorMap['white'];
        colorSwatch['bgColor'] = colorMap['gray'];
        break;
      case 'WHITE':
        colorSwatch['primaryColor'] = colorMap['white'];
        colorSwatch['txtColor'] = colorMap['black'];
        colorSwatch['bgColor'] = colorMap['gray'];
        break;
      default:
        colorSwatch['primaryColor'] = colorMap['green'];
        colorSwatch['txtColor'] = colorMap['white'];
        colorSwatch['bgColor'] = colorMap['gray'];
    }
    return colorSwatch;
  }

  final PrayersService _prayersService = PrayersService();
  String fetchPrayer(String prayer) {
    return _prayersService.fetchPrayer(prayer);
  }

  final List<bool> _showMystery = [
    true,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  List<bool> get showMystery => _showMystery;

  void toggleMystery(int index) {
    for (int i = 0; i < _showMystery.length; i++) {
      i == index ? _showMystery[i] = !_showMystery[i] : _showMystery[i] = false;
    }
    /*!((_showMystery.getRange(0, 5)).contains(true))
        ? _showMystery[5] = true
        : _showMystery[5] = false;*/
    //togglePrayer('alloff');
    //print(_showMystery);
    closePrayers();
    rebuildUi();
  }

  void closeMysteries() {
    for (int i = 0; i < 5; i++) {
      _showMystery[i] = false;
    }
    rebuildUi();
  }

  final List<bool> _showPrayer = List<bool>.filled(100, false);

  List<bool> get showPrayer => _showPrayer;

  void togglePrayer(int index) {
    for (int i = 0; i < _showPrayer.length; i++) {
      i == index ? _showPrayer[i] = !_showPrayer[i] : _showPrayer[i] = false;
    }
    rebuildUi();
  }

  void closePrayers() {
    for (int i = 0; i < _showPrayer.length; i++) {
      _showPrayer[i] = false;
    }
  }
}
