import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todays_rosary/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todays_rosary/services/mystery_service.dart';
import 'package:todays_rosary/services/litcal_api_service.dart';
import 'package:todays_rosary/services/rosary_day_service.dart';
import 'package:todays_rosary/services/prayers_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks(
  [],
  customMocks: [
    MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<MysteryService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<LitcalApiService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<RosaryDayService>(onMissingStub: OnMissingStub.returnDefault),
    MockSpec<PrayersService>(onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
  ],
)
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterMysteryService();
  getAndRegisterLitcalApiService();
  getAndRegisterRosaryDayService();
  getAndRegisterPrayersService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(
    service.showCustomSheet<T, T>(
      enableDrag: anyNamed('enableDrag'),
      enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
      exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
      ignoreSafeArea: anyNamed('ignoreSafeArea'),
      isScrollControlled: anyNamed('isScrollControlled'),
      barrierDismissible: anyNamed('barrierDismissible'),
      additionalButtonTitle: anyNamed('additionalButtonTitle'),
      variant: anyNamed('variant'),
      title: anyNamed('title'),
      hasImage: anyNamed('hasImage'),
      imageUrl: anyNamed('imageUrl'),
      showIconInMainButton: anyNamed('showIconInMainButton'),
      mainButtonTitle: anyNamed('mainButtonTitle'),
      showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
      secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
      showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
      takesInput: anyNamed('takesInput'),
      barrierColor: anyNamed('barrierColor'),
      barrierLabel: anyNamed('barrierLabel'),
      customData: anyNamed('customData'),
      data: anyNamed('data'),
      description: anyNamed('description'),
    ),
  ).thenAnswer(
    (realInvocation) =>
        Future.value(showCustomSheetResponse ?? SheetResponse<T>()),
  );

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockMysteryService getAndRegisterMysteryService() {
  _removeRegistrationIfExists<MysteryService>();
  final service = MockMysteryService();
  locator.registerSingleton<MysteryService>(service);
  return service;
}

MockLitcalApiService getAndRegisterLitcalApiService() {
  _removeRegistrationIfExists<LitcalApiService>();
  final service = MockLitcalApiService();
  locator.registerSingleton<LitcalApiService>(service);
  return service;
}

MockRosaryDayService getAndRegisterRosaryDayService() {
  _removeRegistrationIfExists<RosaryDayService>();
  final service = MockRosaryDayService();
  locator.registerSingleton<RosaryDayService>(service);
  return service;
}

MockPrayersService getAndRegisterPrayersService() {
  _removeRegistrationIfExists<PrayersService>();
  final service = MockPrayersService();
  locator.registerSingleton<PrayersService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
