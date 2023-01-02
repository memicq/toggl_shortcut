import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toggl_shortcut/views/screens/home_screen/home_screen.dart';
import 'package:toggl_shortcut/views/screens/loading_screen/loading_screen.dart';
import 'package:toggl_shortcut/views/screens/template_addition/template_addition_screen.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoadingScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'template_addition',
            pageBuilder: (context, state) => const MaterialPage(
              fullscreenDialog: true,
              child: TemplateAdditionScreen(),
            ),
          ),
        ],
      ),
    ],
  );
}

CustomTransitionPage fadeTransitionPage<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
