import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/food.dart';
import 'food_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ));
  }
}
