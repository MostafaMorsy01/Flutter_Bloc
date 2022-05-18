import 'package:flutter/material.dart';
import 'package:flutter_block/constants/strings.dart';
import 'package:flutter_block/presentation/screens/characters_details.dart';
import 'package:flutter_block/presentation/screens/characters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
      case characterDetailScreen:
        return MaterialPageRoute(builder: (_) => const CharacterDetailsScreen());
    }
  }
}