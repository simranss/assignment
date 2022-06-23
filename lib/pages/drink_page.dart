import 'package:flutter/material.dart';

import '../models/drink.dart';

class DrinkPage extends StatelessWidget {
  const DrinkPage(this.drink, {Key? key}) : super(key: key);
  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(drink.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Text('id: ${drink.id}'),
          Text('tags: ${drink.tags}'),
          Text('instructions: ${drink.instructions}'),
        ]),
      ),
    );
  }
}
