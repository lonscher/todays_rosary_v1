import 'package:flutter/material.dart';
import 'package:todays_rosary/styles/utils.dart';

class Styles {
  static const String trajanFont = 'Trajan Pro';
  static const String schylerFont = 'Schyler';
  static const double standardSpace = 4;

  // Prayer Text
  static const TextStyle stylePrayer = TextStyle(
    //fontFamily: schylerFont,
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: Colors.white,
  );

  // Button Style
  static final ButtonStyle styleButton = ElevatedButton.styleFrom(
    side: const BorderSide(color: Colors.white, width: 3),
    //backgroundColor: viewModel.fetchColorMap()['primaryColor'],
    //foregroundColor: viewModel.fetchColorMap()['txtColor'],
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    padding: const EdgeInsets.all(10),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
    ),
  );
}
