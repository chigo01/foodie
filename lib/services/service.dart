import 'package:http/http.dart' as http;
import '/models/recipe.dart';

import 'dart:convert';

//calling the api to get the data
class NetworkService {
  Future<Recipe1> getData() async {
    //get the uri from an api class constant
   try {
     var url = Uri.parse(
         'https://api.edamam.com/search?q=dinner&app_id=8bdcfd18&app_key=709d7bbe7a23f56106151b9d1ce37a61');

     http.Response response = await http.get(url);
     if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) ;
       // List<dynamic> hits = jsonData['hits'];
       // List<Recipe> posts = hits.map((item) => Recipe.fromJson(item)).toList();


       return recipeFromJson(jsonData);
     }
   }
   catch (e) {
     print(e.toString());
   }
   throw 'Could not fetch data';
  }
}
