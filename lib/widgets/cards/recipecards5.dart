
import 'package:flutter/material.dart';

import '../../models/recipe.dart';
import '../../services/service.dart';

import '../card.dart';

class RecipeCard5 extends StatefulWidget {
  const RecipeCard5({Key? key}) : super(key: key);

  @override
  State<RecipeCard5> createState() => _RecipeCard5State();
}

class _RecipeCard5State extends State<RecipeCard5> {
  NetworkService5 services = NetworkService5();

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
