import 'package:fast_flutter_project/live_test_M14/model/recipe_model.dart';
import 'package:fast_flutter_project/live_test_M14/screen/recipe_service.dart';
import 'package:flutter/material.dart';

class RecipeListScreen extends StatefulWidget {
  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  late Future<List<Recipe>> futureRecipes;

  @override
  void initState() {
    super.initState();
    futureRecipes = loadRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Recipes"),
      ),
      body: FutureBuilder<List<Recipe>>(
        future: futureRecipes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            final recipes = snapshot.data!;
            return ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return ListTile(
                  leading: Icon(Icons.restaurant_menu),
                  title: Text(
                    recipe.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(recipe.description),
                );
              },
            );
          }
        },
      ),
    );
  }
}
