
import 'package:flutter/material.dart';

import '../../models/recipe.dart';
import '../../services/service.dart';

import '../card.dart';

class RecipeCard4 extends StatefulWidget {
  const RecipeCard4({Key? key}) : super(key: key);

  @override
  State<RecipeCard4> createState() => _RecipeCard4State();
}

class _RecipeCard4State extends State<RecipeCard4> {
  NetworkService4 services = NetworkService4();

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
