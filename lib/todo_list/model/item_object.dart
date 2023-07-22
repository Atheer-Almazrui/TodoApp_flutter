

class ItemObject {
  int userId = 0;
  int id = 0;
  String title = "";
  bool completed = false;

  ItemObject(String title){
    this.title = title;
    this.completed = false;
  }

  ItemObject.fromJson(Map json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  Map toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}