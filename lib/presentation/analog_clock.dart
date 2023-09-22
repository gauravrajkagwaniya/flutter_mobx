import 'package:flutter/material.dart';

import '../store/clock_store.dart';
import 'custom/clock_painter.dart';
import 'custom/store_observer.dart';

class AnalogClock extends StatelessWidget {
  final ClockStore store;
  const AnalogClock({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreObserver(
      builder: (ClockStore store, context) {
        return Container(
          child: Center(
            child: Card(
              elevation: 50,
              shape: CircleBorder(),
              borderOnForeground: true,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: CustomPaint(
                    painter:
                        ClockPainter(store.hours, store.minutes, store.seconds),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
