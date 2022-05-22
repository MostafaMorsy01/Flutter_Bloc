import 'package:bloc/bloc.dart';
import 'package:flutter_block/data/models/character_model.dart';
import 'package:flutter_block/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  late List<Character> characters;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacter() {

    charactersRepository.fetchAllCharacters().then((characters) => {
      emit(CharactersLoaded(characters)),
      this.characters = characters
    });

    return characters;
  }
}
