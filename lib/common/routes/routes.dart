import 'package:dpay_app/screens/my/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_navbor.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const BottomNavBar();
        },
        routes: <RouteBase>[
          GoRoute(
            name: 'home',
            path: 'home',
            builder: (BuildContext context, GoRouterState state) {
              return const BottomNavBar(currentIndex: 0);
            },
          ),
          GoRoute(
            name: 'record',
            path: 'record',
            builder: (BuildContext context, GoRouterState state) {
              return const BottomNavBar(currentIndex: 1); // 直接返回 BottomNavBar
            },
          ),
          GoRoute(
            name: 'account',
            path: 'account',
            builder: (BuildContext context, GoRouterState state) {
              return const BottomNavBar(currentIndex: 2);
            },
          ),
          GoRoute(
            name: 'my',
            path: 'my',
            builder: (BuildContext context, GoRouterState state) {
              return const BottomNavBar(currentIndex: 3);
            },
          ),
          GoRoute(
              name: 'profile',
              path: 'profile',
              builder: (BuildContext context, GoRouterState state) {
                return const ProfilePage();
              }),
        ],
      ),
      GoRoute(path: '/login', builder: (context, state) => const Text('login')),
      GoRoute(path: '/auth', builder: (context, state) => const Text('auth')),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) {
      return Scaffold(
        appBar: AppBar(title: const Text('404')),
        body: const Center(
          child: Text('404'),
        ),
      );
    },
  );
}
