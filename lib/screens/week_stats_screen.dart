import 'dart:math';

import 'package:flutter/material.dart';

import 'package:health_ui/my_colors.dart';
import 'package:health_ui/widgets/heart_beat_box.dart';
import 'package:health_ui/widgets/sleep_box.dart';

class WeekStatsScreen extends StatelessWidget {
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenDark,
      //--------------AppBar with Close Icon-----------------
      appBar: AppBar(
        elevation: 0,
        backgroundColor: greenDark,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: greenLight,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white70,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Stats for week',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '1-7 Febrauary',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: 15),
            //---------------------Heart Box-----------------------------
            HeartBeatBox(),
            //----------------------Sleep Box--------------------------
            SleepBox(),
          ],
        ),
      ),
    );
  }
}

class Days extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Mon',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        Text(
          'Tue',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        Text(
          'Wen',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        Text(
          'Thu',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        Text(
          'Fri',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        Text(
          'Sat',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        Text(
          'Sun',
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
      ],
    );
  }
}

class HeartBars extends StatelessWidget {
  final String date;
  HeartBars({@required this.date});

  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: random.nextInt(70).toDouble() + 35,
      width: 18,
      decoration: BoxDecoration(
        color: yellowLight,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class SleepBars extends StatelessWidget {
  final String date;
  SleepBars({@required this.date});

  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: random.nextInt(70).toDouble() + 35,
      width: 18,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
