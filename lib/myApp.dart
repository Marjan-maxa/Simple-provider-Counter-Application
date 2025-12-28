import 'package:flutter/material.dart';
import 'package:providercounter/counter_screen_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: CounterScreenPage(),
    );
  }
}
