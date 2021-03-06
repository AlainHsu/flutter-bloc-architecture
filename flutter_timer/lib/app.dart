import 'package:flutter/material.dart';
import 'package:flutter_timer/timer/view/timer_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(
          109,
          234,
          255,
          1,
        ),
        accentColor: Color.fromRGBO(72, 74, 126, 1),
        brightness: Brightness.dark,
      ),
      title: 'Flutter Timer',
      home: TimerPage(),
    );
  }
}
