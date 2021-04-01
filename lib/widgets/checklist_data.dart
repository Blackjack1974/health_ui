import 'package:flutter/material.dart';
import 'package:health_ui/widgets/expand_icon.dart';

class ChecklistData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, -2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Vitamic C',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          '20 mg',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      '7:00 PM',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                  ],
                ),
                CustomExpandIcon(),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 120, height: 35),
                child: ElevatedButton.icon(
                  onPressed: () => print('Forgot'),
                  icon: Icon(
                    Icons.close,
                    color: Colors.black87,
                  ),
                  label: Text(
                    'Forgot',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                  ),
                ),
              ),
              SizedBox(width: 15),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 120, height: 35),
                child: ElevatedButton.icon(
                  onPressed: () => print('Done'),
                  icon: Icon(
                    Icons.check,
                    color: Colors.black87,
                  ),
                  label: Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[300],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
