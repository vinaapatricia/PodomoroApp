// ignore_for_file: file_names

import 'package:coba/timerservice.dart';
import 'package:coba/widgets/progress.dart';
import 'package:coba/widgets/timecontroller.dart';
import 'package:coba/widgets/timeoptions.dart';
import 'package:coba/widgets/timercard.dart';
import 'package:flutter/material.dart';
import 'package:coba/utils.dart';
import 'package:provider/provider.dart';

class PodomoroScreen extends StatelessWidget {
  const PodomoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFA4907C),
        title: Text(
          "Podomoro Vina",
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
            icon: const Icon(Icons.refresh, color: Colors.white),
            iconSize: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            const TimerCard(),
            const SizedBox(height: 40),
            TimeOptions(),
            const SizedBox(
              height: 30,
            ),
            const TimeController(),
            const SizedBox(
              height: 40,
            ),
            const ProgressWidget()
          ],
        ),
      ),
    );
  }
}
