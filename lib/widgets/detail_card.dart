import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/food.dart';

class DetailCard extends StatelessWidget {
  Food food;

  DetailCard({required this.food, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(food.name),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              food.image,
              fit: BoxFit.fitWidth,
            )
          ],
        ));
  }
}
