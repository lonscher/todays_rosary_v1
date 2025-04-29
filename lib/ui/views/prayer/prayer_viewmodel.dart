import 'package:stacked/stacked.dart';
import 'package:todays_rosary/services/prayers_service.dart';


class PrayerViewModel extends BaseViewModel {
  final PrayersService _prayersService = PrayersService();
  String fetchPrayer(String prayer) {
    return _prayersService.fetchPrayer(prayer);
  }

  bool _isVisible = false;

  bool get isVisible => _isVisible;

  void toggleVisibility() {
    _isVisible = !_isVisible;
    rebuildUi();
  }
}
