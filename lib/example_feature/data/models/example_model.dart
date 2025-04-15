import '../../business/entities/example_entity.dart';

class ExampleModel extends ExampleEntity {
  ExampleModel({required int id, required String title})
      : super(id: id, title: title);

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
