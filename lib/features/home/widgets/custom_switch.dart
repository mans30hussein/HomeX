import 'package:flutter/material.dart';
import 'package:home_x/core/util/colors.dart';

class CustomSwitch extends StatefulWidget {
   CustomSwitch(
      {super.key, required this.thumbColor, required this.trackColor, required this.isSwitched});
  final Color thumbColor;
  final Color trackColor;
   bool isSwitched;
  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleX: 1.2,
      scaleY: 1.1,
      child: Switch(
        value: widget.isSwitched,
        onChanged: (value) {
          setState(() {
            widget.isSwitched = value;
          });
        },
        inactiveThumbColor: widget.thumbColor,
        thumbColor: MaterialStatePropertyAll<Color>(widget.thumbColor),
        activeTrackColor: widget.trackColor,
        inactiveTrackColor: widget.trackColor,
        trackOutlineColor: MaterialStatePropertyAll<Color>(widget.trackColor),
      ),
    );
  }
}
