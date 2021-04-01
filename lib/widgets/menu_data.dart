import 'package:flutter/material.dart';

class MenuData extends StatelessWidget {
  final IconData icon;
  final String date;
  final String title;
  final Color color;
  final Function onTap;

  MenuData({
    this.icon,
    this.date,
    this.title,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 180,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: <Widget>[
            //----------------Signal Icon and date-----------
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.white60,
                    size: 15,
                  ),
                  Text(
                    date,
                    style: TextStyle(color: Colors.white60),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Container(
                width: 120,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
