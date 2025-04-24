import 'package:flutter/material.dart';
import 'package:todays_rosary/app/app.bottomsheets.dart';
import 'package:todays_rosary/app/app.dialogs.dart';
import 'package:todays_rosary/app/app.locator.dart';
import 'package:todays_rosary/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todays_rosary/services/rosary_day_service.dart';

late final RosaryDay rosaryDay;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  //rosaryDay = await RosaryDayService().getRosaryDay();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      title: 'Today\'s Rosary',
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
    );
  }
}
