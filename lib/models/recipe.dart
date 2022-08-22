import 'dart:convert';

Recipe1 recipeFromJson(str) => Recipe1.fromJson(json.decode(str.toString()));

String recipeToJson(Recipe1 data) => json.encode(data.toJson());

class Recipe1 {
  Recipe1({
    required this.q,
    required this.from,
    required this.to,
    required this.more,
    required this.count,
    required this.hits,
  });

   String? q;
   int? from;
   int? to;
   bool? more;
   int? count;
  List<Hit>? hits;

  factory Recipe1.fromJson(Map<String, dynamic> json) => Recipe1(
        q: json["q"] as String,
        from: json["from"] as int,
        to: json["to"] as int,
        more: json["more"] as bool,
        count: json["count"] as int,
        hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "q": q,
        "from": from,
        "to": to,
        "more": more,
        "count": count,
        "hits": List<dynamic>.from(hits!.map((x) => x.toJson())),
      };
}

class Hit {
  Hit({
    required this.recipe,
  });

  final Recipe recipe;

  factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        recipe: Recipe.fromJson(json["recipe"]),
      );

  Map<String, dynamic> toJson() => {
        "recipe": recipe.toJson(),
      };
}

class Recipe {
  Recipe({
    required this.label,
    required this.image,
    required this.url,
    required this.ingredients,
  });

  String? label;
  String? image;

  String? url;

  // final List<String> ingredientLines;
  final List<Ingredient> ingredients;
  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      image: json['images'] as String,
      label: json['label'] as String,
      url: json['url'] as String,
      ingredients: json['ingredients'] as List<Ingredient>,
    );
  }
  Map<String, dynamic> toJson() => {
        "label": label,
        "image": image,
        "url": url,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
      };
}

class Ingredient {
  Ingredient({
    required this.text,
    required this.food,
    required this.foodCategory,
    required this.image,
  });

  final String text;

  final String food;

  final String foodCategory;

  final String image;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        text: json["text"] as String,
        food: json["food"],
        foodCategory: json["foodCategory"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "food": food,
        "foodCategory": foodCategory,
        "image": image,
      };
}
