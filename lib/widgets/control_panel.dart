import 'package:flutter/material.dart';

class ControlPanel extends StatefulWidget {
  final String text1;
  final String text2;

  ControlPanel(this.text1, this.text2);

  @override
  _ControlPanelState createState() => _ControlPanelState();
}

class _ControlPanelState extends State<ControlPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          widget.text1, //layout
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
              widget.text2, // row
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
