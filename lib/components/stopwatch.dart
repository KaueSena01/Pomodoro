import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/stopwatch_button.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    
    return Observer(
      builder: (_) => Container(
        color: store.beWorking() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              store.beWorking() ? 'Hora de Trabalhar' : 'Hora de Descansar', 
              style: TextStyle(fontSize: 40, color: Colors.white)
            ),
            SizedBox(height: 20),
            Text(
              "${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}",
              style: TextStyle(fontSize: 120, color: Colors.white),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if(!store.start)
                StopWatchButton(
                  text: "Iniciar", 
                  icon: Icons.play_arrow,
                  click: store.toStart,
                ),
                if(store.start)
                StopWatchButton(
                  text: "Parar", 
                  icon: Icons.stop,
                  click: store.toStop,
                ),
                StopWatchButton(
                  text: "Reiniciar", 
                  icon: Icons.refresh,
                  click: store.toRestart,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}