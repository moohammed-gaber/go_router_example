import 'package:flutter/material.dart';
import 'package:go_router_example/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isLogged = false;

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
      builder: (_, router) => Stack(
        children: [
          router!,
          Align(
              alignment: Alignment(0, 0.8),
              child: FloatingActionButton.extended(
                  label:
                      Text(isLogged ? 'Tab to Logged out' : 'Tab to Logged in'),
                  onPressed: () {
                    setState(() {
                      isLogged = !isLogged;
                    });
                  }))
        ],
      ),
    );
  }
}
