import 'package:flutter/material.dart';

import '../../models/recipe.dart';
import '../../services/service.dart';

import '../card.dart';

class RecipeCard1 extends StatefulWidget {
  const RecipeCard1({Key? key}) : super(key: key);

  @override
  State<RecipeCard1> createState() => _RecipeCard1State();
}

class _RecipeCard1State extends State<RecipeCard1> {
  NetworkService1 services = NetworkService1();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: services.getData(),
        builder: (context, AsyncSnapshot<List<Recipe?>?> snapshot) {
          if (snapshot.hasData) {
            List<Recipe?>? recipe = snapshot.data ?? [];

            return Cards(recipe: recipe);
          } else if (snapshot.hasError) {
            return Text(
              snapshot.error.toString(),
              style: const TextStyle(color: Colors.white),
            );
          }
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ));
        });
  }
}
