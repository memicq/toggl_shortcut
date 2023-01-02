import 'package:flutter/material.dart';
import 'package:toggl_shortcut/repositories/toggl_repository.dart';
import 'package:toggl_shortcut/style/my_color.dart';
import 'package:toggl_shortcut/style/my_text.dart';
import 'package:toggl_shortcut/views/screens/screen.dart';
import 'package:toggl_shortcut/views/screens/template_addition/template_addition_data.dart';
import 'package:toggl_shortcut/views/screens/template_addition/template_addition_view_model.dart';

class TemplateAdditionScreen extends Screen {
  const TemplateAdditionScreen() : super();

  @override
  TemplateAdditionScreenState createState() => TemplateAdditionScreenState();
}

class TemplateAdditionScreenState extends ScreenState<TemplateAdditionScreen,
    TemplateAdditionViewModel, TemplateAdditionData> {
  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: MyText.roundBold("テンプレートの作成", fontSize: 16),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText.roundBold("タイトル"),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            MyText.roundBold("プロジェクト"),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Material(
              color: MyColor.accentColor,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: MyText.normalBold(
                      "作成する",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
