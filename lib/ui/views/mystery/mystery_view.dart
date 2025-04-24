import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
//import 'package:todays_rosary/main.dart';
import 'mystery_viewmodel.dart';

class MysteryView extends StackedView<MysteryViewModel> {
  final int mysteryIndex;
  final int mysteryString;
  const MysteryView(
      {Key? key, required this.mysteryIndex, required this.mysteryString})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MysteryViewModel viewModel,
    Widget? child,
  ) {
    final ButtonStyle styleButton = ElevatedButton.styleFrom(
      side: const BorderSide(color: Colors.white, width: 3),
      //      backgroundColor: viewModel.fetchColorMap()['primaryColor'],
      //    foregroundColor: viewModel.fetchColorMap()['txtColor'],
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
    );

    return Container(
                  color: Colors.amber,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          viewModel.toggleMystery('first');
                        },
                        style: styleButton,
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
  }

  @override
  MysteryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MysteryViewModel();
}
