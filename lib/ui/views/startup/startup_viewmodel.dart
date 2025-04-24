//import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:todays_rosary/app/app.locator.dart';
import 'package:todays_rosary/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
//import 'package:todays_rosary/services/liturgy_service.dart';
//import 'package:todays_rosary/services/mystery_service.dart';
import 'package:todays_rosary/services/rosary_day_service.dart';
import 'package:todays_rosary/main.dart';

class StartupViewModel extends BaseViewModel {
  //final _mysteryService = locator<MysteryService>();
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    //await Future.delayed(const Duration(seconds: 3));
    //await _mysteryService.fetchMystery('Joyful');

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    //_navigationService.replaceWithMysteryView();

    rosaryDay = await RosaryDayService().getRosaryDay();

    _navigationService.replaceWith(Routes.rosaryView);
  }
}
