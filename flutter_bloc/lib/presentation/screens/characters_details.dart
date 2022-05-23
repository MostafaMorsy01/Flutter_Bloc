// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_block/constants/colors.dart';
import 'package:flutter_block/data/models/character_model.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Character character;
  const CharacterDetailsScreen({
    Key? key,
    required this.character,
  }) : super(key: key);

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 500,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.grey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          character.nickName,
          style: TextStyle(color: MyColors.white),
          textAlign: TextAlign.start,
        ),
        background: Hero(
          tag: character.charId,
          child: Image.network(
            character.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget characterInfo(String title, String value) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(children: [
        TextSpan(
          text: title,
          style: TextStyle(
              color: MyColors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        TextSpan(
          text: value,
          style: TextStyle(color: MyColors.white, fontSize: 16),
        ),
      ]),
    );
  }

  Widget buildDivider(double endIndent) {
    return Divider(
      height: 30,
      endIndent: endIndent,
      color: MyColors.yelloww,
      thickness: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey,
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  characterInfo('Job : ', character.occupation.join(',')),
                  buildDivider(315),
                  characterInfo(
                      'Appeared In : ', character.apperanceOfSeasons.join(',')),
                  buildDivider(215),
                  characterInfo(
                      'Seasons : ', character.apperanceOfSeasons.join('/')),
                  buildDivider(245),
                  characterInfo('Status : ', character.statusIfDeadOrAlive),
                  buildDivider(245),
                  characterInfo('Actor/Actress : ', character.portrayed),
                  buildDivider(200),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 500,),
          ])),
        ],
      ),
    );
  }
}
