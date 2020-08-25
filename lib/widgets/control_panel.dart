import 'package:flutter/material.dart';

class ControlPanel extends StatelessWidget {
  String text1;
  String text2;

  ControlPanel(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text1, //layout
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_back,
              size: 30,
            ),
            SizedBox(width: 30),
            Text(
              text2, // row
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(width: 30),
            Icon(
              Icons.arrow_forward,
              size: 30,
            ),
          ],
        ),
      ],
    );
  }
}
