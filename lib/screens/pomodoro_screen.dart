import 'package:flutter/material.dart';
import 'package:pomodoro/components/time_entry.dart';
import 'package:pomodoro/components/stopwatch.dart';
import 'package:provider/provider.dart';
import '../store/pomodoro.store.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: StopWatch()
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeEntry(title: 'Trabalho', value: store.workTime),
                TimeEntry(title: 'Descanso', value: store.restTime)
              ],
            ),
          )
        ],
      ),
    );
  }
}