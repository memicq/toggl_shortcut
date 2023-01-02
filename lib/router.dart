import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toggl_shortcut/views/screens/loading_screen/loading_screen.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoadingScreen(),
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
