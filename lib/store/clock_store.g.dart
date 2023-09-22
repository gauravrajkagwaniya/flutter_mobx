// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClockStore on _ClockStore, Store {
  Computed<String>? _$clockTypeComputed;

  @override
  String get clockType =>
      (_$clockTypeComputed ??= Computed<String>(() => super.clockType,
              name: '_ClockStore.clockType'))
          .value;
  Computed<bool>? _$clockChangedComputed;

  @override
  bool get clockChanged =>
      (_$clockChangedComputed ??= Computed<bool>(() => super.clockChanged,
              name: '_ClockStore.clockChanged'))
          .value;
  Computed<String>? _$digitalDateComputed;

  @override
  String get digitalDate =>
      (_$digitalDateComputed ??= Computed<String>(() => super.digitalDate,
              name: '_ClockStore.digitalDate'))
          .value;
  Computed<String>? _$digitalTimeComputed;

  @override
  String get digitalTime =>
      (_$digitalTimeComputed ??= Computed<String>(() => super.digitalTime,
              name: '_ClockStore.digitalTime'))
          .value;
  Computed<double>? _$secondsComputed;

  @override
  double get seconds => (_$secondsComputed ??=
          Computed<double>(() => super.seconds, name: '_ClockStore.seconds'))
      .value;
  Computed<double>? _$minutesComputed;

  @override
  double get minutes => (_$minutesComputed ??=
          Computed<double>(() => super.minutes, name: '_ClockStore.minutes'))
      .value;
  Computed<double>? _$hoursComputed;

  @override
  double get hours => (_$hoursComputed ??=
          Computed<double>(() => super.hours, name: '_ClockStore.hours'))
      .value;

  late final _$nowAtom = Atom(name: '_ClockStore.now', context: context);

  @override
  DateTime get now {
    _$nowAtom.reportRead();
    return super.now;
  }

  @override
  set now(DateTime value) {
    _$nowAtom.reportWrite(value, super.now, () {
      super.now = value;
    });
  }

  late final _$isChangedAtom =
      Atom(name: '_ClockStore.isChanged', context: context);

  @override
  bool get isChanged {
    _$isChangedAtom.reportRead();
    return super.isChanged;
  }

  @override
  set isChanged(bool value) {
    _$isChangedAtom.reportWrite(value, super.isChanged, () {
      super.isChanged = value;
    });
  }

  late final _$isMilitaryTimeAtom =
      Atom(name: '_ClockStore.isMilitaryTime', context: context);

  @override
  bool get isMilitaryTime {
    _$isMilitaryTimeAtom.reportRead();
    return super.isMilitaryTime;
  }

  @override
  set isMilitaryTime(bool value) {
    _$isMilitaryTimeAtom.reportWrite(value, super.isMilitaryTime, () {
      super.isMilitaryTime = value;
    });
  }

  late final _$syncTimeAsyncAction =
      AsyncAction('_ClockStore.syncTime', context: context);

  @override
  Future<void> syncTime() {
    return _$syncTimeAsyncAction.run(() => super.syncTime());
  }

  late final _$changeWatchFaceAsyncAction =
      AsyncAction('_ClockStore.changeWatchFace', context: context);

  @override
  Future<void> changeWatchFace() {
    return _$changeWatchFaceAsyncAction.run(() => super.changeWatchFace());
  }

  late final _$setMilitaryTimeAsyncAction =
      AsyncAction('_ClockStore.setMilitaryTime', context: context);

  @override
  Future<void> setMilitaryTime() {
    return _$setMilitaryTimeAsyncAction.run(() => super.setMilitaryTime());
  }

  @override
  String toString() {
    return '''
now: ${now},
isChanged: ${isChanged},
isMilitaryTime: ${isMilitaryTime},
clockType: ${clockType},
clockChanged: ${clockChanged},
digitalDate: ${digitalDate},
digitalTime: ${digitalTime},
seconds: ${seconds},
minutes: ${minutes},
hours: ${hours}
    ''';
  }
}
