import 'package:go_router/go_router.dart';
import 'package:shopping_shep_flutter/presentations/screens/home/home_screen.dart';
import 'package:shopping_shep_flutter/presentations/screens/notifications/notifications_screen.dart';
import 'package:shopping_shep_flutter/presentations/screens/on_boarding/on_boarding_screen.dart';
import 'package:shopping_shep_flutter/presentations/screens/settings/settings_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      routes: [
        GoRoute(
          path: 'home',
          name: "HomeScreen",
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: 'settings',
          name: "SettingsScreen",
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: 'notifications',
          name: "NotificationsScreen",
          builder: (context, state) => const NotificationsScreen(),
        ),
      ],
      name: "OnBoarding",
      builder: (context, state) => const OnBoardingScreen(),
    ),
    
  ]
);