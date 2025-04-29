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

            /*Text(
              viewModel.mysteries[0].verseText,
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlign: TextAlign.center,
            ),*/
            // ---------------------------------------  Opening Prayers  -----------------------------------------
            Card(
                //color: viewModel.fetchColorMap()['primaryColor'],
                color: Colors.green,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: Styles.standardSpace),
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
                      const SizedBox(height: Styles.standardSpace),
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
                      const SizedBox(height: Styles.standardSpace),
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
                      const SizedBox(height: Styles.standardSpace),
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
                      const SizedBox(height: Styles.standardSpace),
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
                      const SizedBox(height: Styles.standardSpace),
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
                      const SizedBox(height: Styles.standardSpace),
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
                      const SizedBox(height: Styles.standardSpace),
                    ])),
            // end Opening Prayers --------------------------------------------------------------------
            const SizedBox(height: Styles.standardSpace),
            // First Mystery ----------------------------------------------------------------------------
            ElevatedButton(
              onPressed: () {
                viewModel.toggleMystery(0);
              },
              style: Styles.styleButton,
              child: Text(viewModel.mysteries[0].mystery),
            ),
            Visibility(
                visible: viewModel.showMystery[0],
                child: Card(
                  color: viewModel.fetchColorMap()['primaryColor'],
                  child: Column(children: [
                    // Verse Text
                    Text(
                      viewModel.mysteries[0].verseText,
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    // Our Father
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(10);
                      },
                      style: Styles.styleButton,
                      child: const Text('Our Father'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[10],
                      child: Text(
                        viewModel.fetchPrayer('Our Father'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 1
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(11);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[11],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 2
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(12);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[12],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 3
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(13);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[13],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 4
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(14);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[14],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 5
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(15);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[15],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 6
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(16);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[16],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 7
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(17);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[17],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 8
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(18);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[18],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 9
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(19);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[19],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 10
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(20);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[20],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Glory Be
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(21);
                      },
                      style: Styles.styleButton,
                      child: const Text('Glory Be'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[21],
                      child: Text(
                        viewModel.fetchPrayer('Glory Be'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Fatima Prayer
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(22);
                      },
                      style: Styles.styleButton,
                      child: const Text('Fatima Prayer'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[22],
                      child: Text(
                        viewModel.fetchPrayer('Fatima Prayer'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // End of Rosary Decade
                  ]),
                )),
            // End First Mystery  -----------------------------------------------------------------
            // Second Mystery ----------------------------------------------------------------------------
            ElevatedButton(
              onPressed: () {
                viewModel.toggleMystery(1);
              },
              style: Styles.styleButton,
              child: Text(viewModel.mysteries[1].mystery),
            ),
            Visibility(
                visible: viewModel.showMystery[1],
                child: Card(
                  color: viewModel.fetchColorMap()['primaryColor'],
                  child: Column(children: [
                    // Verse Text
                    Text(
                      viewModel.mysteries[1].verseText,
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    // Our Father
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(10);
                      },
                      style: Styles.styleButton,
                      child: const Text('Our Father'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[10],
                      child: Text(
                        viewModel.fetchPrayer('Our Father'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 1
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(11);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[11],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 2
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(12);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[12],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 3
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(13);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[13],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 4
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(14);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[14],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 5
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(15);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[15],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 6
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(16);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[16],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 7
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(17);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[17],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 8
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(18);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[18],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 9
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(19);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[19],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 10
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(20);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[20],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Glory Be
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(21);
                      },
                      style: Styles.styleButton,
                      child: const Text('Glory Be'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[21],
                      child: Text(
                        viewModel.fetchPrayer('Glory Be'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Fatima Prayer
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(22);
                      },
                      style: Styles.styleButton,
                      child: const Text('Fatima Prayer'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[22],
                      child: Text(
                        viewModel.fetchPrayer('Fatima Prayer'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // End of Rosary Decade
                  ]),
                )),
            // End Second Mystery  -----------------------------------------------------------------
            // Third Mystery ----------------------------------------------------------------------------
            ElevatedButton(
              onPressed: () {
                viewModel.toggleMystery(2);
              },
              style: Styles.styleButton,
              child: Text(viewModel.mysteries[2].mystery),
            ),
            Visibility(
                visible: viewModel.showMystery[2],
                child: Card(
                  color: viewModel.fetchColorMap()['primaryColor'],
                  child: Column(children: [
                    // Verse Text
                    Text(
                      viewModel.mysteries[2].verseText,
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    // Our Father
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(10);
                      },
                      style: Styles.styleButton,
                      child: const Text('Our Father'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[10],
                      child: Text(
                        viewModel.fetchPrayer('Our Father'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 1
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(11);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[11],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 2
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(12);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[12],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 3
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(13);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[13],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 4
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(14);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[14],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 5
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(15);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[15],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 6
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(16);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[16],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 7
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(17);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[17],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 8
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(18);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[18],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 9
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(19);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[19],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 10
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(20);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[20],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Glory Be
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(21);
                      },
                      style: Styles.styleButton,
                      child: const Text('Glory Be'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[21],
                      child: Text(
                        viewModel.fetchPrayer('Glory Be'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Fatima Prayer
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(22);
                      },
                      style: Styles.styleButton,
                      child: const Text('Fatima Prayer'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[22],
                      child: Text(
                        viewModel.fetchPrayer('Fatima Prayer'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // End of Rosary Decade
                  ]),
                )),
            // End Third Mystery  -----------------------------------------------------------------
            // Fourth Mystery ----------------------------------------------------------------------------
            ElevatedButton(
              onPressed: () {
                viewModel.toggleMystery(3);
              },
              style: Styles.styleButton,
              child: Text(viewModel.mysteries[3].mystery),
            ),
            Visibility(
                visible: viewModel.showMystery[3],
                child: Card(
                  color: viewModel.fetchColorMap()['primaryColor'],
                  child: Column(children: [
                    // Verse Text
                    Text(
                      viewModel.mysteries[3].verseText,
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    // Our Father
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(10);
                      },
                      style: Styles.styleButton,
                      child: const Text('Our Father'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[10],
                      child: Text(
                        viewModel.fetchPrayer('Our Father'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 1
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(11);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[11],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 2
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(12);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[12],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 3
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(13);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[13],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 4
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(14);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[14],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 5
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(15);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[15],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 6
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(16);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[16],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 7
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(17);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[17],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 8
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(18);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[18],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 9
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(19);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[19],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 10
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(20);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[20],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Glory Be
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(21);
                      },
                      style: Styles.styleButton,
                      child: const Text('Glory Be'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[21],
                      child: Text(
                        viewModel.fetchPrayer('Glory Be'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Fatima Prayer
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(22);
                      },
                      style: Styles.styleButton,
                      child: const Text('Fatima Prayer'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[22],
                      child: Text(
                        viewModel.fetchPrayer('Fatima Prayer'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // End of Rosary Decade
                  ]),
                )),
            // End Fourth Mystery  -----------------------------------------------------------------
            // Fifth Mystery ----------------------------------------------------------------------------
            ElevatedButton(
              onPressed: () {
                viewModel.toggleMystery(4);
              },
              style: Styles.styleButton,
              child: Text(viewModel.mysteries[4].mystery),
            ),
            Visibility(
                visible: viewModel.showMystery[4],
                child: Card(
                  color: viewModel.fetchColorMap()['primaryColor'],
                  child: Column(children: [
                    // Verse Text
                    Text(
                      viewModel.mysteries[4].verseText,
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    // Our Father
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(10);
                      },
                      style: Styles.styleButton,
                      child: const Text('Our Father'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[10],
                      child: Text(
                        viewModel.fetchPrayer('Our Father'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 1
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(11);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[11],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 2
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(12);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[12],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 3
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(13);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[13],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 4
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(14);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[14],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 5
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(15);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[15],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 6
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(16);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[16],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 7
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(17);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[17],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 8
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(18);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[18],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 9
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(19);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[19],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Hail Mary 10
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(20);
                      },
                      style: Styles.styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[20],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Glory Be
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(21);
                      },
                      style: Styles.styleButton,
                      child: const Text('Glory Be'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[21],
                      child: Text(
                        viewModel.fetchPrayer('Glory Be'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: Styles.standardSpace),
                    // Fatima Prayer
                    ElevatedButton(
                      onPressed: () {
                        viewModel.togglePrayer(22);
                      },
                      style: Styles.styleButton,
                      child: const Text('Fatima Prayer'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer[22],
                      child: Text(
                        viewModel.fetchPrayer('Fatima Prayer'),
                        style: Styles.stylePrayer,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // End of Rosary Decade
                  ]),
                )),
            // End Fifth Mystery  -----------------------------------------------------------------
            // ---------------------------------------  Closing Prayers  -----------------------------------------
            Card(
                //color: viewModel.fetchColorMap()['primaryColor'],
                color: Colors.green,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: Styles.standardSpace),
                      // Saint Micheael
                      ElevatedButton(
                        onPressed: () {
                          viewModel.togglePrayer(90);
                        },
                        style: Styles.styleButton,
                        child: const Text('Saint Michael'),
                      ),
                      Visibility(
                        visible: viewModel.showPrayer[90],
                        child: Text(
                          viewModel.fetchPrayer('Saint Michael Prayer'),
                          style: Styles.stylePrayer,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // end Saint Michael
                      const SizedBox(height: Styles.standardSpace),
                      // Hail Holy Queen
                      ElevatedButton(
                        onPressed: () {
                          viewModel.togglePrayer(91);
                        },
                        style: Styles.styleButton,
                        child: const Text('Hail Holy Queen'),
                      ),
                      Visibility(
                        visible: viewModel.showPrayer[91],
                        child: Text(
                          viewModel.fetchPrayer('Hail Holy Queen'),
                          style: Styles.stylePrayer,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // end Hail Holy Queen
                      const SizedBox(height: Styles.standardSpace),
                      // Rosary Prayer
                      ElevatedButton(
                        onPressed: () {
                          viewModel.togglePrayer(92);
                        },
                        style: Styles.styleButton,
                        child: const Text('Rosary Prayer'),
                      ),
                      Visibility(
                        visible: viewModel.showPrayer[92],
                        child: Text(
                          viewModel.fetchPrayer('Rosary Prayer'),
                          style: Styles.stylePrayer,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // end Rosary Prayer
                      const SizedBox(height: Styles.standardSpace),
                      const SizedBox(height: Styles.standardSpace),
                    ])),
            // end Closing Prayers --------------------------------------------------------------------
          ],
        ));
  }

  @override
  RosaryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RosaryViewModel();
}
