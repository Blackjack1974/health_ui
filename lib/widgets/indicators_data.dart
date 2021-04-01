import 'package:flutter/material.dart';
import 'expand_icon.dart';

class IndicatorsData extends StatelessWidget {
  final String hour;
  final String data;
  final String title;
  final String metric;
  final Color titleColor;

  IndicatorsData({
    this.hour,
    this.data,
    this.title,
    this.metric,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          //----------------Title and hour-----------
          Positioned(
            left: 20,
            top: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  hour,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          //--------------------Icon---------------------
          Positioned(
            top: 15,
            right: 20,
            child: CustomExpandIcon(),
          ),
          //---------------------Data------------------
          Positioned(
            bottom: 25,
            left: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  data,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
                SizedBox(width: 2),
                Text(
                  metric,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
