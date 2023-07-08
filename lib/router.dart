import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/dialog_page.dart';
import 'package:go_router_example/main.dart';
import 'package:go_router_example/pages.dart';

final router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/unauth',
      pageBuilder: (context, state) => DialogPage(
        builder: (_) => UnAuthDialog(),
      ),
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
            path: 'book/:id',
            builder: (BuildContext context, GoRouterState state) {
              return BookPage(id: state.pathParameters['id']!);
            },
            routes: [
              GoRoute(
                redirect: (_, state) {
                  return isLogged ? null : '/unauth';
                },
                path: 'listening',
                builder: (BuildContext context, GoRouterState state) {
                  return const ListeningPage();
                },
              ),
            ]),
      ],
    ),
  ],
);
