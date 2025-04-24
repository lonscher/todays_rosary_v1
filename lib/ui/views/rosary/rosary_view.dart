import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'rosary_viewmodel.dart';
//import 'package:todays_rosary/ui/views/mystery/mystery_view.dart';

class RosaryView extends StackedView<RosaryViewModel> {
  const RosaryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RosaryViewModel viewModel,
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
        body: Column(
          children: [
            Visibility(
                visible: viewModel.showMystery[5],
                child: Column(
                  children: [
                    // Apostle's Creed
                    ElevatedButton(
                      onPressed: () {
                        viewModel.closeMysteries();
                        viewModel.togglePrayer('ac');
                      },
                      style: styleButton,
                      child: const Text('Apostle\'s Creed'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer['ac'],
                      child: Text(
                        viewModel.fetchPrayer('Apostles Creed'),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Our Father
                    ElevatedButton(
                      onPressed: () {
                        viewModel.closeMysteries();
                        viewModel.togglePrayer('of');
                      },
                      style: styleButton,
                      child: const Text('Our Father'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer['of'],
                      child: Text(
                        viewModel.fetchPrayer('Our Father'),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Hail Mary 1
                    ElevatedButton(
                      onPressed: () {
                        viewModel.closeMysteries();
                        viewModel.togglePrayer('hm1');
                      },
                      style: styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer['hm1'],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Hail Mary 2
                    ElevatedButton(
                      onPressed: () {
                        viewModel.closeMysteries();
                        viewModel.togglePrayer('hm2');
                      },
                      style: styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer['hm2'],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Hail Mary 3
                    ElevatedButton(
                      onPressed: () {
                        viewModel.closeMysteries();
                        viewModel.togglePrayer('hm3');
                      },
                      style: styleButton,
                      child: const Text('Hail Mary'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer['hm3'],
                      child: Text(
                        viewModel.fetchPrayer('Hail Mary'),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Glory Be
                    ElevatedButton(
                      onPressed: () {
                        viewModel.closeMysteries();
                        viewModel.togglePrayer('gb');
                      },
                      style: styleButton,
                      child: const Text('Glory Be'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer['gb'],
                      child: Text(
                        viewModel.fetchPrayer('Glory Be'),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Fatima Prayer
                    ElevatedButton(
                      onPressed: () {
                        viewModel.closeMysteries();
                        viewModel.togglePrayer('fp');
                      },
                      style: styleButton,
                      child: const Text('Fatima Prayer'),
                    ),
                    Visibility(
                      visible: viewModel.showPrayer['fp'],
                      child: Text(
                        viewModel.fetchPrayer('Fatima Prayer'),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )),

            // Start of Rosary Decade
            Expanded(
                child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.amber,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          viewModel.toggleMystery(index);
                        },
                        style: styleButton,
                        child: Text(viewModel.mysteries[index].mystery),
                      ),
                      Visibility(
                          visible: viewModel.showMystery[index],
                          child: Card(
                            color: viewModel.fetchColorMap()['primaryColor'],
                            child: Column(children: [
                              // Verse Text
                              Text(
                                viewModel.mysteries[index].verseText,
                                style: const TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                              // Our Father
                              ElevatedButton(
                                onPressed: () {
                                  viewModel.togglePrayer('of');
                                },
                                style: styleButton,
                                child: const Text('Our Father'),
                              ),
                              Visibility(
                                visible: viewModel.showPrayer['of'],
                                child: Text(
                                  viewModel.fetchPrayer('Our Father'),
                                  style: const TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              // Hail Mary 1
                              ElevatedButton(
                                onPressed: () {
                                  viewModel.togglePrayer('hm1');
                                },
                                style: styleButton,
                                child: const Text('Hail Mary'),
                              ),
                              Visibility(
                                visible: viewModel.showPrayer['hm1'],
                                child: Text(
                                  viewModel.fetchPrayer('Hail Mary'),
                                  style: const TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              // Hail Mary 2
                              ElevatedButton(
                                onPressed: () {
                                  viewModel.togglePrayer('hm2');
                                },
                                style: styleButton,
                                child: const Text('Hail Mary'),
                              ),
                              Visibility(
                                visible: viewModel.showPrayer['hm2'],
                                child: Text(
                                  viewModel.fetchPrayer('Hail Mary'),
                                  style: const TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              // Glory Be
                              ElevatedButton(
                                onPressed: () {
                                  viewModel.togglePrayer('gb');
                                },
                                style: styleButton,
                                child: const Text('Glory Be'),
                              ),
                              Visibility(
                                visible: viewModel.showPrayer['gb'],
                                child: Text(
                                  viewModel.fetchPrayer('Glory Be'),
                                  style: const TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              // Fatima Prayer
                              ElevatedButton(
                                onPressed: () {
                                  viewModel.togglePrayer('fp');
                                },
                                style: styleButton,
                                child: const Text('Fatima Prayer'),
                              ),
                              Visibility(
                                visible: viewModel.showPrayer['fp'],
                                child: Text(
                                  viewModel.fetchPrayer('Fatima Prayer'),
                                  style: const TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              // End of Rosary Decade
                            ]),
                          )),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            )),
          ],
        )
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
        );
  }

  @override
  RosaryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RosaryViewModel();
}
