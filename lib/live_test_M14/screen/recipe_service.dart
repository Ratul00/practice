import 'dart:convert';
import 'package:fast_flutter_project/live_test_M14/model/recipe_model.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<List<Recipe>> loadRecipes() async {

  final String response = await rootBundle.loadString('assets/recipes.json');

  final data = json.decode(response);

  // Map into List<Recipe>
  final List recipes = data['recipes'];
  return recipes.map((e) => Recipe.fromJson(e)).toList();
}
