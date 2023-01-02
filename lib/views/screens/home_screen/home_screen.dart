import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toggl_shortcut/models/time_template.dart';
import 'package:toggl_shortcut/style/my_color.dart';
import 'package:toggl_shortcut/views/screens/home_screen/home_data.dart';
import 'package:toggl_shortcut/views/screens/home_screen/home_view_model.dart';
import 'package:toggl_shortcut/views/screens/screen.dart';
import 'package:toggl_shortcut/views/widgets/home/home_card_list_item.dart';
import 'package:toggl_shortcut/views/widgets/home/home_header.dart';

class HomeScreen extends Screen {
  const HomeScreen() : super();

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ScreenState<HomeScreen, HomeViewModel, HomeData> {
  @override
  Widget buildScreen(BuildContext context) {
    final TimeTemplate template = TimeTemplate(
      title: "toggl_shortcutの作成",
      project: "Creativity",
      projectColor: MyColor.accentColor,
    );

    return Scaffold(
      body: Column(
        children: [
          HomeHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    HomeCardListItem(template: template),
                    HomeCardListItem(template: template),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColor.accentColor,
        child: const Icon(Icons.add),
        onPressed: () {
          context.push('/home/template_addition');
        },
      ),
    );
  }
}
