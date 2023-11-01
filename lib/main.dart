import 'package:basic_game/basic_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App()); 
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final game =  BasicGame(); 
    return GameWidget(game: game); 
  }
}