class ItemModel{
  final int id;
  final bool deleted;
  final String type;
  final String by;
  final int time;
  final String text;
  final bool dead;
  final int parent;
  final String url;
  final int score;
  final String title;
  final int descendants;
  final List<dynamic> kids;

  ItemModel.fromJson(Map<String, dynamic> parsedJson)
    : id = parsedJson[''],
      deleted = parsedJson['deleted'],
      type = parsedJson['type'],
      by = parsedJson['by'],
      time = parsedJson['time'],
      text = parsedJson['text'],
      dead = parsedJson['dead'],
      parent = parsedJson['parent'],
      url = parsedJson['url'],
      score = parsedJson['score'],
      title = parsedJson['title'],
      descendants = parsedJson['descendants'],
      kids = parsedJson['kids'];

}