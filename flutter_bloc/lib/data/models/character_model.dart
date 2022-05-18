class Character{
  late int charId;
  late String name;
  late String nickName;
  late String image;
  late List<dynamic> occupation;
  late String statusIfDeadOrAlive;
  late List<dynamic> apperanceOfSeasons;
  late String portrayed;
  late String categoryForTwoSeries;
  late List<dynamic> betterCallSoulApperance;

  Character.fromJson(Map<String,dynamic>json){
    charId = json['char_id'];
    name = json['name'];
    nickName = json['nickname'];
    image = json['img'];
    occupation = json['occupation'];
    statusIfDeadOrAlive = json['status'];
    apperanceOfSeasons = json['appearance'];
    portrayed = json['portrayed'];
    categoryForTwoSeries = json['category'];
    betterCallSoulApperance = json['better_call_saul_appearance'];
    
  }


}