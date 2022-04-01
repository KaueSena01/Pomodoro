import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class TimeEntry extends StatelessWidget {
  const TimeEntry({ 
    Key? key,
    required this.title,
    required this.value,
    this.inc,
    this.dec,
  }) : super(key: key);

  final String title;
  final int value;
  final void Function()? inc;
  final void Function()? dec;

  @override
  Widget build(BuildContext context) {

    final store = Provider.of<PomodoroStore>(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(this.title, style: TextStyle(fontSize: 25)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: this.dec, 
              child: Icon(Icons.arrow_downward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: store.beWorking() ? Colors.red : Colors.green
              ),
            ),
            Text('${this.value} min', style: TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: this.inc, 
              child: Icon(Icons.arrow_upward, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: store.beWorking() ? Colors.red : Colors.green
              ),
            ),
          ],
        ),
      ],
    );
  }
}