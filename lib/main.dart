import 'package:flutter/material.dart';
import 'package:menu_app/widgets/detail_card.dart';
import 'package:menu_app/widgets/food_card.dart';
import 'package:menu_app/widgets/home.dart';
import 'models/food.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: ((context, state) => Home()),
    ),
    GoRoute(
      path: '/details',
      builder: ((context, state) => DetailCard(
            food: state.extra as Food,
          )),
    ),
  ],
);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Menu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
