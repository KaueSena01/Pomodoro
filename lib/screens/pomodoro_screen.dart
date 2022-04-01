import 'package:flutter/material.dart';
import 'package:pomodoro/components/time_entry.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Pomodoro"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TimeEntry(title: 'Trabalho', value: 25),
              TimeEntry(title: 'Trabalho', value: 25)
            ],
          )
        ],
      ),
    );
  }
}