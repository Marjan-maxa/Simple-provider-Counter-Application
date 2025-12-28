import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounter/myApp.dart';

import 'counter_provider.dart';
 main() {
  runApp(
    ChangeNotifierProvider(
      create:(_)=>CounterProvider(),
      child: Myapp(),
    )

  );
}


