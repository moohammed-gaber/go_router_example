import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/routes.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
          child: TextButton(
        onPressed: () {
          BookPageRoute('123').go(context);
        },
        child: Text('To Book'),
      )),
    );
  }
}


class BookPage extends StatelessWidget {
  const BookPage({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Book $id')),
        body: Center(
            child: TextButton(
          onPressed: () {
            ListeningPageRoute(id).push(context);
          },
          child: Text('To Listen'),
        )));
  }
}

class ListeningPage extends StatelessWidget {
  const ListeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listening')),
      body: Center(child: Text('Listening')),
    );
  }
}

class UnAuthDialog extends StatelessWidget {
  const UnAuthDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog(child: Center(child: Text('You are not logged in')));
  }
}
