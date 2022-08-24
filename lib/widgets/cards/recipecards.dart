import 'package:flutter/material.dart';


import '../../models/recipe.dart';
import '../../services/service.dart';

import '../card.dart';

class RecipeCard extends StatefulWidget {
  const RecipeCard({Key? key}) : super(key: key);

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  NetworkService services = NetworkService();

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
