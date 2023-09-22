import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobx_flutter/model/user/user.dart';
import 'package:mobx_flutter/presentation/analog_clock.dart';
import 'package:mobx_flutter/presentation/custom/store_observer.dart';
import 'package:mobx_flutter/store/clock_store.dart';
import 'package:mobx_flutter/store/user_store.dart';

import '../global.dart';
import 'digital_clock.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return StoreObserver(
      builder: (ClockStore store, context) {
        return Scaffold(
          appBar: AppBar(
              title: Center(child: Text(store.clockType, softWrap: true)),
              actions: [
                IconButton(
                    onPressed: () {
                      store.changeWatchFace();
                    },
                    tooltip: "Change watch face",
                    icon: Icon(store.clockChanged
                        ? Icons.switch_left
                        : Icons.switch_right)),
                IconButton(
                    onPressed: () {
                      store.setMilitaryTime();
                    },
                    tooltip: "Military Time",
                    icon: Icon(
                      !store.isMilitaryTime ?Icons.military_tech_outlined:Icons.smart_toy_rounded ,
                    ))
              ]),
          body: Column(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  height: MediaQuery.of(context).size.height * .60,
                  width: MediaQuery.of(context).size.width,
                  child: store.clockChanged
                      ? DigitalClock()
                      : AnalogClock(store: store),
                ),
              ),
              //translated text
              Flexible(
                  flex: 1,
                  child: Container(
                      height: MediaQuery.of(context).size.height * .40,
                      child: store.clockChanged
                          ? Container(
                              height: MediaQuery.of(context).size.height * .40,
                              width: MediaQuery.of(context).size.width * .40,
                              child: AnalogClock(store: store))
                          : DigitalClock()))
            ],
          ),
        );
      },
    );
  }
}
