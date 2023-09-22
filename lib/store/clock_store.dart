import 'dart:async';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'clock_store.g.dart';

class ClockStore = _ClockStore with _$ClockStore;

abstract class _ClockStore with Store {
  @observable
  DateTime now = DateTime.now();
  @observable
  bool isChanged = false;
  @observable
  bool isMilitaryTime = false;

  @computed
  String get clockType => isChanged ? "Digital Clock" : "Analog Clock";

  @computed
  bool get clockChanged => isChanged;

  @computed
  String get digitalDate => DateFormat('yyyy-MM-dd').format(now);

  @computed
  String get digitalTime => isMilitaryTime
      ? DateFormat('HH:mm:ss').format(now)
      : DateFormat('hh:mm a').format(DateTime.now());

  @computed
  double get seconds => now.second.toDouble();

  @computed
  double get minutes => now.minute.toDouble() + (seconds / 60);

  @computed
  double get hours => now.hour.toDouble() + (minutes / 60);

  @action
  Future<void> syncTime() async {
    now = DateTime.now();
  }

  @action
  Future<void> changeWatchFace() async {
    isChanged = !isChanged;
    print("isChanged $isChanged");
  }

  @action
  Future<void> setMilitaryTime() async {
    isMilitaryTime = !isMilitaryTime;
  }

  _ClockStore() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      syncTime();
    });
  }
}
