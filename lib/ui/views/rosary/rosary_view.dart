import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'rosary_viewmodel.dart';
//import 'package:todays_rosary/ui/views/mystery/mystery_view.dart';
import 'package:todays_rosary/ui/views/prayer/prayer_view.dart';
import 'package:todays_rosary/styles/styles.dart';

class RosaryView extends StackedView<RosaryViewModel> {
  const RosaryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RosaryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "The ${viewModel.mystery} Mysteries",
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        )),
        //-------------------------------------------------------ListView-----------------------------------------
        body: ListView(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          children: <Widget>[
            /* const PrayerView(prayer: 'Apostles Creed'),
            const PrayerView(prayer: 'Our Father'),
            const PrayerView(prayer: 'Hail Mary'),
            const PrayerView(prayer: 'Hail Mary'),
            const PrayerView(prayer: 'Hail Mary'),
            const PrayerView(prayer: 'Glory Be'),
            const PrayerView(prayer: 'Fatima Prayer'),*/
            //Column(children: [
           
    /*        Text(
              viewModel.mysteries[0].verseText,
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlign: TextAlign.center,
            ),


            */

            
// Apostle's Creed    index 0
            ElevatedButton(
              onPressed: () {
                viewModel.togglePrayer(0);
              },
              style: Styles.styleButton,
              child: const Text('Apostle\'s Creed'),
            ),
            Visibility(
              visible: viewModel.showPrayer[0],
              child: Text(
                viewModel.fetchPrayer('Apostles Creed'),
                style: Styles.stylePrayer,
                textAlign: TextAlign.center,
              ),
            ),
// end Apostle's Creed
// Our Father         index 1
            ElevatedButton(
              onPressed: () {
                viewModel.togglePrayer(1);
              },
              style: Styles.styleButton,
              child: const Text('Our Father'),
            ),
            Visibility(
              visible: viewModel.showPrayer[1],
              child: Text(
                viewModel.fetchPrayer('Our Father'),
                style: Styles.stylePrayer,
                textAlign: TextAlign.center,
              ),
            ),
// end Our Father
// Hail Mary 1        index 2
            ElevatedButton(
              onPressed: () {
                viewModel.togglePrayer(2);
              },
              style: Styles.styleButton,
              child: const Text('Hail Mary'),
            ),
            Visibility(
              visible: viewModel.showPrayer[2],
              child: Text(
                viewModel.fetchPrayer('Hail Mary'),
                style: Styles.stylePrayer,
                textAlign: TextAlign.center,
              ),
            ),
// end Hail Mary 1
// Hail Mary 2        index 3
            ElevatedButton(
              onPressed: () {
                viewModel.togglePrayer(3);
              },
              style: Styles.styleButton,
              child: const Text('Hail Mary'),
            ),
            Visibility(
              visible: viewModel.showPrayer[3],
              child: Text(
                viewModel.fetchPrayer('Hail Mary'),
                style: Styles.stylePrayer,
                textAlign: TextAlign.center,
              ),
            ),
// end Hail Mary 2
// Hail Mary 3        index 4
            ElevatedButton(
              onPressed: () {
                viewModel.togglePrayer(4);
              },
              style: Styles.styleButton,
              child: const Text('Hail Mary'),
            ),
            Visibility(
              visible: viewModel.showPrayer[4],
              child: Text(
                viewModel.fetchPrayer('Hail Mary'),
                style: Styles.stylePrayer,
                textAlign: TextAlign.center,
              ),
            ),
// end Hail Mary 3
// Glory Be           index 5
            ElevatedButton(
              onPressed: () {
                viewModel.togglePrayer(5);
              },
              style: Styles.styleButton,
              child: const Text('Glory Be'),
            ),
            Visibility(
              visible: viewModel.showPrayer[5],
              child: Text(
                viewModel.fetchPrayer('Glory Be'),
                style: Styles.stylePrayer,
                textAlign: TextAlign.center,
              ),
            ),
// end Glory Be
// Fatima Prayer      index 6
            ElevatedButton(
              onPressed: () {
                viewModel.togglePrayer(6);
              },
              style: Styles.styleButton,
              child: const Text('Fatima Prayer'),
            ),
            Visibility(
              visible: viewModel.showPrayer[6],
              child: Text(
                viewModel.fetchPrayer('Fatima Prayer'),
                style: Styles.stylePrayer,
                textAlign: TextAlign.center,
              ),
            ),
// end Fatima Prayer
            //]),
/*            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),*/

          ],
        )

        );
  }

  @override
  RosaryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RosaryViewModel();
}




//Extra Stuff
        /*Center(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // First Mystery
                ElevatedButton(
                  onPressed: () {
                    viewModel.toggleMystery('first');
                  },
                  style: styleButton,
                  child: Text(viewModel.mysteries[0].mystery),
                ),
                Visibility(
                    visible: viewModel.showMystery['first'],
                    child: const MysteryView(mysteryIndex: 1)),
                // Second Mystery
                ElevatedButton(
                  onPressed: () {
                    viewModel.toggleMystery('second');
                  },
                  style: styleButton,
                  child: Text(viewModel.mysteries[1].mystery),
                ),
                Visibility(
                    visible: viewModel.showMystery['second'],
                    child: const MysteryView(mysteryIndex: 2)),
              ]),
        )*/