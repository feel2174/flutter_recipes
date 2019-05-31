import 'package:flutter/material.dart';

import 'package:flutter_recipes/ui/screens/login.dart';
import 'package:flutter_recipes/ui/theme.dart';
import 'package:flutter_recipes/ui/screens/home.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      theme: buildTheme(),
      initialRoute: '/login',
      routes: {
        '/': (context) => HomeScreen(),
        '/login' : (context) => LoginScreen(),
      },
    );
  }
}
