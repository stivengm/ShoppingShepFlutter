import 'package:go_router/go_router.dart';
import 'package:shopping_shep_flutter/presentations/screens/home/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: "HomeScreen",
      builder: (context, state) => const HomeScreen(),
    ),
  ]
);