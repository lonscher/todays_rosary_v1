import 'package:todays_rosary/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:todays_rosary/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:todays_rosary/ui/views/home/home_view.dart';
import 'package:todays_rosary/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todays_rosary/ui/views/mystery/mystery_view.dart';
import 'package:todays_rosary/services/mystery_service.dart';
import 'package:todays_rosary/services/litcal_api_service.dart';
import 'package:todays_rosary/services/rosary_day_service.dart';
import 'package:todays_rosary/services/prayers_service.dart';
import 'package:todays_rosary/ui/views/rosary/rosary_view.dart';
import 'package:todays_rosary/ui/views/prayer/prayer_view.dart';
import 'package:todays_rosary/services/visibility_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: MysteryView),
    MaterialRoute(page: RosaryView),
    MaterialRoute(page: PrayerView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: MysteryService),
    LazySingleton(classType: LitcalApiService),
    LazySingleton(classType: RosaryDayService),
    LazySingleton(classType: PrayersService),
    LazySingleton(classType: VisibilityService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
