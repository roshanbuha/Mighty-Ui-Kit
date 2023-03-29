/// title : ""
/// description : ""
/// priority : true

class Todo {
  Todo({this.title, this.description, this.priority, this.id});

  Todo.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    priority = json['priority'] == 1 ? true : false;
    id = json['id'];
  }
  String? title;
  String? description;
  bool? priority;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['priority'] = priority! == true ? 1 : 0;
    return map;
  }
}
