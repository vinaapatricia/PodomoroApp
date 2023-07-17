import 'package:coba/timerservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'podomoroscreen.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PodomoroScreen(),
    );
  }
}
