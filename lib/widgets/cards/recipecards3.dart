
import 'package:flutter/material.dart';

import '../../models/recipe.dart';
import '../../services/service.dart';

import '../card.dart';

class RecipeCard3 extends StatefulWidget {
  const RecipeCard3({Key? key}) : super(key: key);

  @override
  State<RecipeCard3> createState() => _RecipeCard3State();
}

class _RecipeCard3State extends State<RecipeCard3> {
  NetworkService3 services = NetworkService3();

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
