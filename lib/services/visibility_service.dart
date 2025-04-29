class VisibilityService {
  
  final Map<String,bool> _showPrayer = {};
  bool showPrayer(String prayer) => _showPrayer[prayer] ?? false;

  void togglePrayer(String prayer) {
    _showPrayer.forEach((key, value) {
      key == prayer ? value = !value : value = false;
    });
  }


  final Map<String,bool> _showMystery = {};
  bool showMystery(String mystery) => _showMystery[mystery] ?? false;

  void toggleMystery(String mystery) {
    _showMystery.forEach((key, value) {
      key == mystery ? value = !value : value = false;
    });
  }

  void printShowPrayer(){print(_showPrayer);}
  void printShowMystery(){print(_showMystery);}
  
}
