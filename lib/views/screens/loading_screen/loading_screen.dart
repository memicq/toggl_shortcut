import 'package:flutter/material.dart';
import 'package:toggl_shortcut/views/screens/loading_screen/loading_data.dart';
import 'package:toggl_shortcut/views/screens/loading_screen/loading_view_model.dart';
import 'package:toggl_shortcut/views/screens/screen.dart';

class LoadingScreen extends Screen {
  const LoadingScreen() : super();

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState
    extends ScreenState<LoadingScreen, LoadingViewModel, LoadingData> {
  @override
  Widget buildScreen(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.cyan,
        ),
      ),
    );
  }
}
