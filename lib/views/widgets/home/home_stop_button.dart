import 'package:flutter/material.dart';
import 'package:toggl_shortcut/style/my_color.dart';

class HomeStopButton extends StatelessWidget {
  const HomeStopButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColor.accentColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(10000),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10000),
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10000),
          ),
          child: Icon(
            Icons.square_rounded,
            color: MyColor.accentColor.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
