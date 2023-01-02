import 'package:flutter/material.dart';

import 'package:toggl_shortcut/style/my_color.dart';
import 'package:toggl_shortcut/style/my_text.dart';
import 'package:toggl_shortcut/views/widgets/common/round.dart';
import 'package:toggl_shortcut/views/widgets/home/home_stop_button.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText.normalBold(
                            "7:20:--",
                            color: MyColor.accentColor,
                            fontSize: 30,
                          ),
                          MyText.normalBold("toggl_shortcutの作成"),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Round(
                                color: MyColor.accentColor,
                                width: 14,
                                height: 14,
                              ),
                              const SizedBox(width: 5),
                              MyText.normal("Creativity", fontSize: 12),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const HomeStopButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
