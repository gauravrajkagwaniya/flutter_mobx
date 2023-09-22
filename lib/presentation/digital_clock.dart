import 'package:flutter/material.dart';

import '../store/clock_store.dart';
import 'custom/store_observer.dart';
class DigitalClock extends StatelessWidget {

  const DigitalClock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  StoreObserver(
      builder: (ClockStore store, context) {
        return AnimatedContainer(
          duration: Duration(seconds: 5),
          curve: Curves.bounceInOut,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: store.clockChanged? 5:1,
                  child: Text(
                    store.digitalDate,
                    style: TextStyle(fontSize:store.clockChanged? 50:30, fontWeight: FontWeight.bold),
                  )),
              Flexible(
                flex: store.clockChanged? 1:1,
                child: Text(
                  store.digitalTime,
                  style: TextStyle(fontSize: store.clockChanged? 40:30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}