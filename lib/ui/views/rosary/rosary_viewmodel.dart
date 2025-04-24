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

  final List _showMystery = [false, false, false, false, false, true];

  List get showMystery => _showMystery;

  void toggleMystery(int index) {
    for (int i = 0; i < 5; i++) {
      i == index ? _showMystery[i] = !_showMystery[i] : _showMystery[i] = false;
    }
    !((_showMystery.getRange(0, 5)).contains(true)) ? _showMystery[5] = true : _showMystery[5] = false;
    togglePrayer('alloff');
    rebuildUi();
  }

void closeMysteries() {
   for (int i = 0; i < 5; i++) {
      _showMystery[i] = false;
    }
    rebuildUi();
}
/*  final Map _showPrayer = {
    'ac': false,'of': false,'hm1': false,'hm2': false,'hm3': false,'gb': false,'m1hm1': false,'m1hm2': false,'m1hm3': false,'m1hm4': false,'m1hm5': false,'m1hm6': false,'m1hm7': false,'m1hm8': false,'m1hm9': false,'m1hm10': false,'m1gb': false,'m1fp': false,'m2hm1': false,'m2hm2': false,'m2hm3': false,'m2hm4': false,'m2hm5': false,'m2hm6': false,'m2hm7': false,'m2hm8': false,'m2hm9': false,'m2hm10': false,'m2gb': false,'m2fp': false,'m3hm1': false,'m3hm2': false,'m3hm3': false,'m3hm4': false,'m3hm5': false,'m3hm6': false,'m3hm7': false,'m3hm8': false,'m3hm9': false,'m3hm10': false,'m3gb': false,'m3fp': false,'m4hm1': false,'m4hm2': false,'m4hm3': false,'m4hm4': false,'m4hm5': false,'m4hm6': false,'m4hm7': false,'m4hm8': false,'m4hm9': false,'m4hm10': false,'m4gb': false,'m4fp': false,'m5hm1': false,'m5hm2': false,'m5hm3': false,'m5hm4': false,'m5hm5': false,'m5hm6': false,'m5hm7': false,'m5hm8': false,'m5hm9': false,'m5hm10': false,'m5gb': false,'m5fp': false,'smp': false,'hhq': false,'rp': false,*/

final Map _showPrayer = {
    'ac': true,
    'of': false,
    'gb': false,
    'fp': false,
    'hm1': false,
    'hm2': false,
    'hm3': false,
    'hm4': false,
    'hm5': false,
    'hm6': false,
    'hm7': false,
    'hm8': false,
    'hm9': false,
    'hm10': false,
    'smp': false,
    'hhq': false,
    'rp': false,
  };

  Map get showPrayer => _showPrayer;

  void togglePrayer(String prayer) {
    //print('\nButton is:$button\n');
    _showPrayer.forEach((key, value) {
      prayer == key
          ? _showPrayer[key] = !_showPrayer[key]
          : _showPrayer[key] = false;
    });
    rebuildUi();
  }

/*   final List _showPrayer = [
    [
      false, // 0,0 Apostle's Creed
      false, // 0,1 Our Father
    ], 
    [
      false, // 2 Hail Mary
      false, // 3 Hail Mary
      false,
    ], // 4 Hail Mary
  ];

  List get showPrayer => _showPrayer;

  void togglePrayer(List index) {
    for (int i = 0; i < _showPrayer.length; i++) {
      for (int x = 0; x < _showPrayer[i].length; x++) {
        print('x=$x   i=$i');
        i == index[0] && x == index[1]
            ? _showPrayer[i][x] = !_showPrayer[i][x]
            : _showPrayer[i][x] = false;
      }
    }
  }*/

  /*List<int> rosaryCount = [10, 10, 10, 10, 10];
  void incrementRosaryCount(indexRosaryCount) {
    rosaryCount[indexRosaryCount]--;
    if (rosaryCount[indexRosaryCount] < 1) {
      toggleRosaryCount(indexRosaryCount);
    }
    rebuildUi();
  }

  final List<bool> _showRosaryCount = [true, true, true, true, true];
  List<bool> get showRosaryCount => _showRosaryCount;

  void toggleRosaryCount(int indexRosaryCount) {
    /*for (int i = 0; i < 5; i++) {
      i == indexRosaryCount ? _showRosaryCount[i] = true :_showRosaryCount[i] = !_showRosaryCount[i];
    }*/
    //resetRosaryCount(indexRosaryCount);
    _showRosaryCount[indexRosaryCount] = !_showRosaryCount[indexRosaryCount];
    rebuildUi();
  }

  void resetRosaryCount(int indexRosaryCount) {
    rosaryCount[indexRosaryCount] = 10;
    toggleRosaryCount(indexRosaryCount);
    //rebuildUi();
  }*/
}
