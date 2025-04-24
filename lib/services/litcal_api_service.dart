import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
//import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

class LitcalApiService {
  Future<String> get _localPath async {
    final directory = await getApplicationSupportDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    final filePath = '$path/litcal.json';
    print(
        '*******************************************************************************************************');
    print('File path: $filePath');
    return File(filePath);
  }

  Future<File> writeJson(var litCal) async {
    final file = await _localFile;
    return file.writeAsString(json.encode(litCal));
  }

  Future<String> readLitCal() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return 'Error reading file: $e';
    }
  }

  Future<List<LitCalDay>> getLitCalDays() async {
    List<LitCalDay> litCalDays = [];
    var litCalJson = [];

    String litCalString = await readLitCal();
    if (!(litCalString.startsWith('Error reading file:'))) {
      print('Getting Data from local file...');
      litCalJson = json.decode(litCalString);
      //print(litCalJson);
      for (var l in litCalJson) {
        //print(l['year']);print(l['month']);print(l['day']);print(l['day_of_the_week_long']);print(l['color'].toUpperCase());print(l['liturgical_season'].toUpperCase());
        LitCalDay litCalDay = LitCalDay(
          l['year'],
          l['month'],
          l['day'],
          l['day_of_the_week_long'],
          l['color'].toUpperCase(),
          l['liturgical_season'].toUpperCase(),
        );
        litCalDays.add(litCalDay);
      }
    } else {
      print('LitCal file not found, fetching from API...');
      final calendarUrl = Uri.parse(
        //'https://litcal.johnromanodorazio.com/api/dev/calendar/nation/US?year_type=LITURGICAL',
        'https://litcal.johnromanodorazio.com/api/dev/calendar/nation/US?year_type=CIVIL',
      );
      final calendarResponse = await http.get(calendarUrl);

      // If the request didn't succeed, throw an exception
      if (calendarResponse.statusCode != 200) {
        print("StatusCode != 200");
      }

      litCalJson = (json.decode(calendarResponse.body)
          as Map<String, dynamic>)['litcal'];
      //print(litCalJson);
      for (var l in litCalJson) {
        LitCalDay litCalDay = LitCalDay(
          l['year'],
          l['month'],
          l['day'],
          l['day_of_the_week_long'],
          l['color'][0].toUpperCase(),
          l['liturgical_season'].toUpperCase(),
        );
        litCalDays.add(litCalDay);
      }

      litCalDays
          .map(
            (litCalDay) => litCalDay.toJson(),
          )
          .toList();
      writeJson(litCalDays);
    }
    return litCalDays;
  }
}

class LitCalDay {
  late int year; // 2024
  late int month; // 12
  late int day; // 31
  late String day_of_the_week_long; // "Tuesday"
  late String color; // [white]
  late String liturgicalSeason; // "CHRISTMAS"

  LitCalDay(
    this.year,
    this.month,
    this.day,
    this.day_of_the_week_long,
    this.color,
    this.liturgicalSeason,
  );

  LitCalDay.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    month = json['month'];
    day = json['day'];
    day_of_the_week_long = json['day_of_the_week_long'];
    color = json['color'];
    liturgicalSeason = json['liturgical_season'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['year'] = year;
    data['month'] = month;
    data['day'] = day;
    data['day_of_the_week_long'] = day_of_the_week_long;
    data['color'] = color;
    data['liturgical_season'] = liturgicalSeason;
    return data;
  }
}
//  final List<String>? color_lcl; // [white]
//  final List<String>? common; // []
//  final String? common_lcl; // ""
//  final int? date; // 1735603200
//final int? day; // 31
//  final int? day_of_the_week_iso8601; // 2
//final String? day_of_the_week_long; // "Tuesday"
//  final String? day_of_the_week_short; // "Tue"
//  final int? event_idx; // 580
//  final String? event_key; // "MotherGod_vigil"
//  final int? grade; // 6
//  final String? grade_abbr; // "S"
//  final String? grade_display; // null
//  final String? grade_lcl; // "SOLEMNITY"
//  final String? is_vigil_for; // "MotherGod"
//  final bool? is_vigil_mass; // true
//  final String? liturgical_season_lcl; // "Christmas"
//  final String? liturgical_year; // "YEAR C"
//final int? month; // 12
//  final String? month_long; // "December"
//  final String? month_short; // "Dec"
//  final String? name; // "Mary Mother of God Vigil Mass"
//  final int? psalter_week; // 0
//  final String? type; // "fixed"
//final int? year; // 2024
