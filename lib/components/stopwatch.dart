import 'package:flutter/material.dart';
import 'package:pomodoro/components/stopwatch_button.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hora de ir Trabalhar", 
            style: TextStyle(fontSize: 40, color: Colors.white)
          ),
          SizedBox(height: 20),
          Text(
            "25:00",
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StopWatchButton(text: "Iniciar", icon: Icons.play_arrow),
              // StopWatchButton(text: "Parar", icon: Icons.stop),
              StopWatchButton(text: "Reiniciar", icon: Icons.refresh)
            ],
          )
        ],
      ),
    );
  }
}