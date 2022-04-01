import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

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

  @action
  void workTimeIncrement() {
    workTime++;
  }


  @action 
  void toStart() {
    start = true;
  }

  @action
  void toStop() {
    start = false;
  }

  @action
  void toRestart() {
    start = false;
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

}