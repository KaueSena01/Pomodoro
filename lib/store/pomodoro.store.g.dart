// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroStore on _PomodoroStore, Store {
  final _$startAtom = Atom(name: '_PomodoroStore.start');

  @override
  bool get start {
    _$startAtom.reportRead();
    return super.start;
  }

  @override
  set start(bool value) {
    _$startAtom.reportWrite(value, super.start, () {
      super.start = value;
    });
  }

  final _$minutesAtom = Atom(name: '_PomodoroStore.minutes');

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  final _$secondsAtom = Atom(name: '_PomodoroStore.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$workTimeAtom = Atom(name: '_PomodoroStore.workTime');

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  final _$restTimeAtom = Atom(name: '_PomodoroStore.restTime');

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  final _$typeIntervalAtom = Atom(name: '_PomodoroStore.typeInterval');

  @override
  TypeInterval get typeInterval {
    _$typeIntervalAtom.reportRead();
    return super.typeInterval;
  }

  @override
  set typeInterval(TypeInterval value) {
    _$typeIntervalAtom.reportWrite(value, super.typeInterval, () {
      super.typeInterval = value;
    });
  }

  final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore');

  @override
  void workTimeIncrement() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.workTimeIncrement');
    try {
      return super.workTimeIncrement();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toStart() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.toStart');
    try {
      return super.toStart();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toStop() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.toStop');
    try {
      return super.toStop();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toRestart() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.toRestart');
    try {
      return super.toRestart();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void workTimeDecrement() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.workTimeDecrement');
    try {
      return super.workTimeDecrement();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restTimeIncrement() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.restTimeIncrement');
    try {
      return super.restTimeIncrement();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restTimeDecrement() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.restTimeDecrement');
    try {
      return super.restTimeDecrement();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
start: ${start},
minutes: ${minutes},
seconds: ${seconds},
workTime: ${workTime},
restTime: ${restTime},
typeInterval: ${typeInterval}
    ''';
  }
}
