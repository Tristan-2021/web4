import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your applicatio.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Example',
      theme: ThemeData(),
    );
  }
}

final _router = GoRouter(
  //debugLogDiagnostics: true,
  routes: [
    GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const Politicas(),
        routes: []),
    GoRoute(
      //name: '/',
      path: '/politicas',
      builder: (context, state) => const UseConditions(),
    ),
  ],
);

class Politicas extends StatelessWidget {
  const Politicas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('va'),
      ),
    );
  }
}

class UseConditions extends StatelessWidget {
  const UseConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('UseConditions'),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('UseConditions'),
      ),
    );
  }
}
