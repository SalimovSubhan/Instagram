import 'package:instagramultra/features/home/business/entities/post_entities.dart';

class ResponsePostEntities {
  final int pageNumber;
  final int pageSize;
  final int totalPage;
  final int totalRecord;
  final List<PostEntities> data;
  final List<String> errors;
  final int statusCode;

  ResponsePostEntities({
    required this.pageNumber,
    required this.pageSize,
    required this.totalPage,
    required this.totalRecord,
    required this.data,
    required this.errors,
    required this.statusCode,
  });
}
