import 'package:flutter/material.dart';
import 'package:toggl_shortcut/application.dart';
import 'package:toggl_shortcut/dependency_injection.dart';
import 'package:toggl_shortcut/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeGetIt();

  final router = createRouter();
  runApp(
    App(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    ),
  );
}
