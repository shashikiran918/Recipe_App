import 'package:flutter/material.dart';
import 'package:navigatortwopionto/models/recipe_model.dart';

class RecipesScreen extends StatelessWidget {
  final List<Recipe> recipes;
  final ValueChanged<Recipe> onTap;

  RecipesScreen({required this.recipes, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cake Recipes')),
      body: ListView(
        children: [
          for (var recipe in this.recipes)
            ListTile(
              title: Text(recipe.name),
              subtitle: Text(recipe.catagory),
              onTap: () => this.onTap(recipe),
            ),
        ],
      ),
    );
  }
}