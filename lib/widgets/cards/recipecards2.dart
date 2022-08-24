import 'package:flutter/material.dart';

import '../../models/recipe.dart';
import '../../services/service.dart';

import '../card.dart';

class RecipeCard2 extends StatefulWidget {
  const RecipeCard2({Key? key}) : super(key: key);

  @override
  State<RecipeCard2> createState() => _RecipeCard2State();
}

class _RecipeCard2State extends State<RecipeCard2> {
  NetworkService2 services = NetworkService2();

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
