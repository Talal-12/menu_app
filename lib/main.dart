import 'package:flutter/material.dart';

import 'package:menu_app/widgets/food_card.dart';

import 'models/food.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: Text(
                "Menu",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Color.fromARGB(255, 255, 106, 0)),
          body: ListView(
            children: Food.foods
                .map((food) => FoodCard(
                      food: food,
                    ))
                .toList(),
          )),
    );
  }
}
