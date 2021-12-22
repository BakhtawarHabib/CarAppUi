import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
        scale: 0.8,
        child: Switch(
          onChanged: toggleSwitch,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: isSwitched,
          activeColor: baseColor,
          activeTrackColor: switchactiveColor,
          inactiveThumbColor: greyColor,
          inactiveTrackColor: darkGrey,
        ),
      ),
    ]);
  }
}
