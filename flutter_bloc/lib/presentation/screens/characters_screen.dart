import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_block/constants/colors.dart';
import 'package:flutter_block/data/models/character_model.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Character> allCharacters;

  @override
  void initState() {
    // TODO: implement initState @MostafaMorsy01
    super.initState();
    allCharacters = BlocProvider.of<CharactersCubit>(context).getAllCharacter();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.yelloww,
        title: const Text(
          'Characters',
          style: TextStyle(color: MyColors.grey),
        ),
      ),
      body: Container(),
    );
  }
}
