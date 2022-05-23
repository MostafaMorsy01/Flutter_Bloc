// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_block/constants/strings.dart';
import 'package:flutter_block/data/models/character_model.dart';
import 'package:flutter_block/data/repository/characters_repository.dart';
import 'package:flutter_block/data/services/characters_service.dart';
import 'package:flutter_block/presentation/screens/characters_details.dart';
import 'package:flutter_block/presentation/screens/characters_screen.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => charactersCubit,
                  child: const CharactersScreen(),
                ));
      case characterDetailScreen:
        final character = settings.arguments as Character;
        return MaterialPageRoute(
            builder: (_) => CharacterDetailsScreen(character: character));
    }
  }
}
