import 'package:flutter/material.dart';
import 'package:flutter_block/constants/strings.dart';
import 'package:flutter_block/presentation/screens/characters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case allCharactersRoute:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
    }
  }
}