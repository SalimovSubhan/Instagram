import '../../business/entities/example_entity.dart';

class ExampleModel extends ExampleEntity {
  ExampleModel({required super.id, required super.title});

  factory ExampleModel.fromJson(Map<String, dynamic> json) {
    return ExampleModel(
      id: json['id'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}
