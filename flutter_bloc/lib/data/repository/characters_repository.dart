import 'package:flutter_block/data/models/character_model.dart';
import 'package:flutter_block/data/services/characters_service.dart';

class CharactersRepository {
  final CharactersServices charactersServices;

  CharactersRepository(this.charactersServices);

  Future<List<dynamic>> fetchAllCharacters() async {
    final characters = await charactersServices.getAllCharacters();
    return characters.map((character) => Character.fromJson(character)).toList();
  }
}
