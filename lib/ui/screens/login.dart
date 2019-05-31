import 'package:flutter/material.dart';
import 'package:flutter_recipes/ui/widgets/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/photo-1505935428862-770b6f24f629.jpeg"),
          fit: BoxFit.cover,
        ),
      );
    }
    Text _buildText() {
      return Text(
        'Recipes',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(

      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              SizedBox(height: 50.0),
              GoogleSignInButton(
                onPressed: () => Navigator.of(context).pushReplacementNamed('/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}