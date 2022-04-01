import 'package:flutter/material.dart';

class StopWatchButton extends StatelessWidget {
  const StopWatchButton({ 
    Key? key,
    required this.text,
    required this.icon,
    this.click
    }) : super(key: key);

    final String text;
    final IconData icon;
    final void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        textStyle: TextStyle(
          fontSize: 25
        )
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(text),
          )
        ],
      ),
      onPressed: click,
    );
  }
}