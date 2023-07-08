import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/pages.dart';

part 'routes.g.dart';
@TypedGoRoute<HomeRoute>(path: '/', routes: [
  TypedGoRoute<BookPageRoute>(path: 'book/:id', routes: [
    TypedGoRoute<ListeningPageRoute>(
      path: 'listening',
    ),
  ]),
])
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, state) {
    return Home();
  }
}

class ListeningPageRoute extends GoRouteData {
  final String id;

  ListeningPageRoute(this.id);
  @override
  Widget build(BuildContext context, state) {
    return ListeningPage();
  }
}
class BookPageRoute extends GoRouteData {
  final String id;

  BookPageRoute(this.id);

  @override
  Widget build(BuildContext context, state) {
    return BookPage(id: id);
  }
}

@TypedGoRoute<UnAuthPageRoute>(
  path: '/unauth',
)
class UnAuthPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, state) {
    return UnAuthDialog();
  }
}
