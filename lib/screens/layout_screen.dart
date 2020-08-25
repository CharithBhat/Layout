import 'package:flutter/material.dart';

import '../widgets/control_panel.dart';

class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orange,
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ControlPanel('Layout','row'),// here
              ControlPanel('Main Axis Alignment','start'),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          height: 0,
        ),
        Container(
          color: Colors.orange,
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ControlPanel('Main Axis Size','min'),
              ControlPanel('Cross Axis Alignment','start'),
            ],
          ),
        ),
      ],
    );
  }
}
