import 'package:go_router/go_router.dart';
import 'package:shopping_shep_flutter/presentations/screens/home/home_screen.dart';
import 'package:shopping_shep_flutter/presentations/screens/on_boarding/on_boarding_screen.dart';

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
      ],
      name: "OnBoarding",
      builder: (context, state) => const OnBoardingScreen(),
    ),
    
  ]
);