import 'package:intl/intl.dart';
import 'package:todays_rosary/services/litcal_api_service.dart';

class RosaryDayService {
  Future<RosaryDay> getRosaryDay() async {
    String mysteries;

    final now = DateTime.now().subtract(const Duration(days: 0));
    final int year = int.parse(DateFormat('yyyy').format(now));
    final int month = int.parse(DateFormat('M').format(now));
    final int day = int.parse(DateFormat('d').format(now));
    final String dayOfTheWeekLong = DateFormat('EEEE').format(now);

    final List<LitCalDay> litCalDays = await LitcalApiService().getLitCalDays();

    final LitCalDay litCalDay = (litCalDays.where((element) =>
        element.year == year &&
        element.month == month &&
        element.day == day)).first;
    /*       element['year'] == year &&
        element['month'] == month &&
        element['day'] == day)).first;*/
    switch (dayOfTheWeekLong) {
      case 'Sunday':
        switch (litCalDay.liturgicalSeason) {
          case "ADVENT":
            mysteries = 'Joyful';
          case 'CHRISTMAS':
            mysteries = 'Joyful';
          case 'LENT':
            mysteries = 'Sorrowful';
          default:
            mysteries = 'Glorious';
        }
      case 'Monday':
        mysteries = 'Joyful';
      case 'Tuesday':
        mysteries = 'Sorrowful';
      case 'Wednesday':
        mysteries = 'Glorious';
      case 'Thursday':
        mysteries = 'Luminous';
      case 'Friday':
        mysteries = 'Sorrowful';
      case 'Saturday':
        mysteries = 'Joyful';
      default:
        mysteries = 'Glorious';
    }
    RosaryDay rosaryDay =
        RosaryDay(litCalDay.color, litCalDay.liturgicalSeason, mysteries);
    print(
        '#############################################################################################');
    print("Color: ${rosaryDay.color}");
    print("Season: ${rosaryDay.liturgicalSeason}");
    print("Mysteries: ${rosaryDay.mysteries}");
    print("Day of the week: $dayOfTheWeekLong");
    print(
        '#############################################################################################');
    return rosaryDay;
  }
}

class RosaryDay {
  late String color; // [white]
  late String liturgicalSeason; // "CHRISTMAS"
  late String mysteries; // "Joyful"

  RosaryDay(this.color, this.liturgicalSeason, this.mysteries);

  /* RosaryDay.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    liturgicalSeason = json['liturgical_season'];
    mysteries = json['mysteries'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['color'] = color;
    data['liturgical_season'] = liturgicalSeason;
    data['mysteries'] = mysteries;
    return data;
  }*/
}

//  final List<String>? color_lcl; // [white]
//  final List<String>? common; // []
//  final String? common_lcl; // ""
//  final int? date; // 1735603200
//final int? day; // 31
//  final int? day_of_the_week_iso8601; // 2
//final String? dayOfTheWeekLong; // "Tuesday"
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
