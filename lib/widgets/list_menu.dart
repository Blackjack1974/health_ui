import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_ui/screens/week_stats_screen.dart';

import '../my_colors.dart';
import 'menu_data.dart';

class ListMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20),
        children: [
          Row(
            children: <Widget>[
              MenuData(
                title: 'Statistic for the last week',
                icon: FontAwesomeIcons.signal,
                date: '1-7 feb',
                color: greenDark,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeekStatsScreen(),
                  ),
                ),
              ),
              SizedBox(width: 15),
              MenuData(
                title: 'Running in the last month',
                icon: FontAwesomeIcons.running,
                date: '1-31 jan',
                color: blueDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
