class Example {
  final bool complete;
  final String id;
  final String title;

  Example({this.complete = false, this.id = '', this.title = ''});

  Example copyWith(
      {required bool complete, required String id, required String title}) {
    return Example(id: id, complete: complete, title: title);
  }

  ExampleEntity toEntity() {
    return ExampleEntity(complete, id, title);
  }

  static Example fromEntity(ExampleEntity entity) {
    return Example(
      complete: entity.complete,
      title: entity.title,
      id: entity.id,
    );
  }
}

class ExampleEntity {
  final bool complete;
  final String id;
  final String title;

  ExampleEntity(this.complete, this.id, this.title);

  Map<String, Object> toJson() {
    return {
      'complete': complete,
      'title': title,
      'id': id,
    };
  }

  @override
  String toString() {
    return 'TodoEntity{complete: $complete, id: $id, title: $title}';
  }

  static ExampleEntity fromJson(Map<String, Object> json) {
    return ExampleEntity(
      json['complete'] as bool,
      json['id'] as String,
      json['title'] as String,
    );
  }
}
