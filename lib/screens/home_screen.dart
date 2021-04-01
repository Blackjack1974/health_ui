import 'package:flutter/material.dart';
import 'package:health_ui/widgets/checklist_data.dart';
import 'package:health_ui/widgets/list_menu.dart';
import 'package:health_ui/widgets/upper_bar.dart';
import 'package:health_ui/widgets/indicators_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UpperBar(), // Avatar + Name + Hamburger Icon
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Compilations',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListMenu(), // List View Menu
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Indicators',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IndicatorsData(
                  title: 'Steps',
                  hour: '8:24 PM',
                  data: '3200',
                  metric: 'steps',
                  titleColor: Colors.blue[600],
                ),
                IndicatorsData(
                  title: 'Pulse',
                  hour: '6:24 PM',
                  data: '65',
                  metric: 'BPM',
                  titleColor: Colors.red,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25, bottom: 20),
              child: Text(
                'Checklist',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(child: ChecklistData()),
          ],
        ),
      ),
    );
  }
}
