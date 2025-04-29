import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'prayer_viewmodel.dart';
import 'package:todays_rosary/main.dart';

class PrayerView extends StackedView<PrayerViewModel> {
  final String prayer;
  const PrayerView({
    Key? key,
    required this.prayer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PrayerViewModel viewModel,
    Widget? child,
  ) {
    final ButtonStyle styleButton = ElevatedButton.styleFrom(
      side: const BorderSide(color: Colors.white, width: 3),
//      backgroundColor: viewModel.fetchColorMap()['primaryColor'],
      //    foregroundColor: viewModel.fetchColorMap()['txtColor'],
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w800,
      ),
    );

    return Column(children: [
      // Hail Mary 3
      ElevatedButton(
        onPressed: () {
          //viewModel.closeMysteries();
          //viewModel.togglePrayer('hm3');
          viewModel.toggleVisibility();
          print('$prayer button pressed');
          print(visibilityService.showPrayer);
        },
        style: styleButton,
        child: Text(prayer),
      ),
      Visibility(
        visible: visibilityService.showPrayer(prayer),
        //visible: true,
        child: Text(
          viewModel.fetchPrayer(prayer),
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(height: 5),
    ]);
  }

  @override
  PrayerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PrayerViewModel();
}
