import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TypeInterval { WORK, REST }

abstract class _PomodoroStore with Store{

  @observable
  bool start = false;
  
  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int  workTime = 2;

  @observable
  int restTime = 1;

  @observable
  TypeInterval typeInterval = TypeInterval.WORK;

  Timer? stopwatch;

  @action
  void workTimeIncrement() {
    workTime++;
  }


  @action 
  void toStart() {
    start = true;
    // alternar a duração da função para milesegusdos/segundos
    stopwatch = Timer.periodic(Duration(seconds: 1), (timer) {
      if(minutes == 0 && seconds == 0) {
        _alternateTypeInterval();
      } else if(seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void toStop() {
    start = false;
    stopwatch?.cancel();
  }

  @action
  void toRestart() {
    toStop();
    minutes = 0;
    seconds = 0;
  }

  @action 
  void workTimeDecrement() {
    workTime--;
  }

  @action
  void restTimeIncrement() {
    restTime++;
  }

  @action 
  void restTimeDecrement() {
    restTime--;
  }

  bool beWorking() {
    return typeInterval == TypeInterval.WORK;
  }

  bool beRest() {
    return typeInterval == TypeInterval.REST;
  }

  void _alternateTypeInterval() {
    if(beWorking()) {
      typeInterval = TypeInterval.REST;
      minutes = restTime;
    } else {
      typeInterval = TypeInterval.WORK;
      minutes = workTime;
    }

    seconds = 0;
  }
}