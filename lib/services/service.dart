import 'package:http/http.dart' as http;
import '/models/recipe.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

//calling the api to get the data
class NetworkService {
  Future<List<Recipe>> getData() async {
    //get the uri from an api class constant
    try {
      var url = Uri.parse('https://api.edamam.com/search?q=popular&app_id='
          '8bdcfd18&app_key=709d7bbe7a23f56106151b9d1ce37a61&from=0&to=100');

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> hits = jsonData['hits'] as List;
        // print("hits: $hits");
        // List<Recipe> posts = hits.map((item) => Recipe.fromJson(item)).toList();
        final hit = hits.map((e) => Recipe.fromJson(e["recipe"])).toList();
        print(hit);

        return hit;
      }
    } catch (e) {
      print(e.toString());
    }
    throw 'Could not fetch data';
  }
}

class NetworkService1 {
  Future<List<Recipe>> getData() async {
    //get the uri from an api class constant
    try {
      var url = Uri.parse('https://api.edamam.com/search?q=breakfast&app_id='
          '8bdcfd18&app_key=709d7bbe7a23f56106151b9d1ce37a61&from=0&to=100');

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> hits = jsonData['hits'] as List;
        // print("hits: $hits");
        // List<Recipe> posts = hits.map((item) => Recipe.fromJson(item)).toList();
        final hit = hits.map((e) => Recipe.fromJson(e["recipe"])).toList();
        print(hit);

        return hit;
      }
    } catch (e) {
      print(e.toString());
    }
    throw 'Could not fetch data';
  }
}

class NetworkService2 {
  Future<List<Recipe>> getData() async {
    //get the uri from an api class constant
    try {
      var url = Uri.parse('https://api.edamam.com/search?q=lunch&app_id='
          '8bdcfd18&app_key=709d7bbe7a23f56106151b9d1ce37a61&from=0&to=100');

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> hits = jsonData['hits'] as List;
        // print("hits: $hits");
        // List<Recipe> posts = hits.map((item) => Recipe.fromJson(item)).toList();
        final hit = hits.map((e) => Recipe.fromJson(e["recipe"])).toList();
        print(hit);

        return hit;
      }
    } catch (e) {
      print(e.toString());
    }
    throw 'Could not fetch data';
  }
}

class NetworkService3 {
  Future<List<Recipe>> getData() async {
    //get the uri from an api class constant
    try {
      var url = Uri.parse('https://api.edamam.com/search?q=dinner&app_id='
          '8bdcfd18&app_key=709d7bbe7a23f56106151b9d1ce37a61&from=0&to=100');

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> hits = jsonData['hits'] as List;
        // print("hits: $hits");
        // List<Recipe> posts = hits.map((item) => Recipe.fromJson(item)).toList();
        final hit = hits.map((e) => Recipe.fromJson(e["recipe"])).toList();
        print(hit);

        return hit;
      }
    } catch (e) {
      print(e.toString());
    }
    throw 'Could not fetch data';
  }
}

class NetworkService4 {
  Future<List<Recipe>> getData() async {
    //get the uri from an api class constant
    try {
      var url = Uri.parse('https://api.edamam.com/search?q=snack&app_id='
          '8bdcfd18&app_key=709d7bbe7a23f56106151b9d1ce37a61&from=0&to=100');

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> hits = jsonData['hits'] as List;
        // print("hits: $hits");
        // List<Recipe> posts = hits.map((item) => Recipe.fromJson(item)).toList();
        final hit = hits.map((e) => Recipe.fromJson(e["recipe"])).toList();
        print(hit);

        return hit;
      }
    } catch (e) {
      print(e.toString());
    }
    throw 'Could not fetch data';
  }
}

class NetworkService5 {
  Future<List<Recipe>> getData() async {
    //get the uri from an api class constant
    try {
      var url = Uri.parse('https://api.edamam.com/search?q=chicken&app_id='
          '8bdcfd18&app_key=709d7bbe7a23f56106151b9d1ce37a61&from=0&to=100');

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> hits = jsonData['hits'] as List;
        // print("hits: $hits");
        // List<Recipe> posts = hits.map((item) => Recipe.fromJson(item)).toList();
        final hit = hits.map((e) => Recipe.fromJson(e["recipe"])).toList();
        print(hit);

        return hit;
      }
    } catch (e) {
      print(e.toString());
    }
    throw 'Could not fetch data';
  }
}
