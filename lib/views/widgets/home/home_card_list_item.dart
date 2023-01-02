import 'package:flutter/material.dart';
import 'package:toggl_shortcut/models/time_template.dart';
import 'package:toggl_shortcut/style/my_text.dart';
import 'package:toggl_shortcut/views/widgets/common/round.dart';

class HomeCardListItem extends StatelessWidget {
  const HomeCardListItem({
    Key? key,
    required this.template,
  }) : super(key: key);

  final TimeTemplate template;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText.roundBold(
                        template.title,
                        fontSize: 16,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Round(
                            color: template.projectColor,
                            height: 14,
                            width: 14,
                          ),
                          const SizedBox(width: 5),
                          MyText.normal(template.project),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.cyan.withOpacity(0.8),
                  size: 35,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
