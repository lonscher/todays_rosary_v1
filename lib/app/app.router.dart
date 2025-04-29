// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i8;
import 'package:todays_rosary/ui/views/home/home_view.dart' as _i2;
import 'package:todays_rosary/ui/views/mystery/mystery_view.dart' as _i4;
import 'package:todays_rosary/ui/views/prayer/prayer_view.dart' as _i6;
import 'package:todays_rosary/ui/views/rosary/rosary_view.dart' as _i5;
import 'package:todays_rosary/ui/views/startup/startup_view.dart' as _i3;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const mysteryView = '/mystery-view';

  static const rosaryView = '/rosary-view';

  static const prayerView = '/prayer-view';

  static const all = <String>{
    homeView,
    startupView,
    mysteryView,
    rosaryView,
    prayerView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.mysteryView,
      page: _i4.MysteryView,
    ),
    _i1.RouteDef(
      Routes.rosaryView,
      page: _i5.RosaryView,
    ),
    _i1.RouteDef(
      Routes.prayerView,
      page: _i6.PrayerView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.MysteryView: (data) {
      final args = data.getArgs<MysteryViewArguments>(nullOk: false);
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.MysteryView(
            key: args.key,
            mysteryIndex: args.mysteryIndex,
            mysteryString: args.mysteryString),
        settings: data,
      );
    },
    _i5.RosaryView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.RosaryView(),
        settings: data,
      );
    },
    _i6.PrayerView: (data) {
      final args = data.getArgs<PrayerViewArguments>(nullOk: false);
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.PrayerView(key: args.key, prayer: args.prayer),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class MysteryViewArguments {
  const MysteryViewArguments({
    this.key,
    required this.mysteryIndex,
    required this.mysteryString,
  });

  final _i7.Key? key;

  final int mysteryIndex;

  final int mysteryString;

  @override
  String toString() {
    return '{"key": "$key", "mysteryIndex": "$mysteryIndex", "mysteryString": "$mysteryString"}';
  }

  @override
  bool operator ==(covariant MysteryViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.mysteryIndex == mysteryIndex &&
        other.mysteryString == mysteryString;
  }

  @override
  int get hashCode {
    return key.hashCode ^ mysteryIndex.hashCode ^ mysteryString.hashCode;
  }
}

class PrayerViewArguments {
  const PrayerViewArguments({
    this.key,
    required this.prayer,
  });

  final _i7.Key? key;

  final String prayer;

  @override
  String toString() {
    return '{"key": "$key", "prayer": "$prayer"}';
  }

  @override
  bool operator ==(covariant PrayerViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.prayer == prayer;
  }

  @override
  int get hashCode {
    return key.hashCode ^ prayer.hashCode;
  }
}

extension NavigatorStateExtension on _i8.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMysteryView({
    _i7.Key? key,
    required int mysteryIndex,
    required int mysteryString,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.mysteryView,
        arguments: MysteryViewArguments(
            key: key, mysteryIndex: mysteryIndex, mysteryString: mysteryString),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRosaryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.rosaryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPrayerView({
    _i7.Key? key,
    required String prayer,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.prayerView,
        arguments: PrayerViewArguments(key: key, prayer: prayer),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMysteryView({
    _i7.Key? key,
    required int mysteryIndex,
    required int mysteryString,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.mysteryView,
        arguments: MysteryViewArguments(
            key: key, mysteryIndex: mysteryIndex, mysteryString: mysteryString),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRosaryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.rosaryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPrayerView({
    _i7.Key? key,
    required String prayer,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.prayerView,
        arguments: PrayerViewArguments(key: key, prayer: prayer),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
