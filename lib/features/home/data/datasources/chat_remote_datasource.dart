import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';
import 'package:instagramultra/core/utils/log_service.dart';
import 'package:instagramultra/features/home/business/entities/chats_entities.dart';
import 'package:instagramultra/features/home/data/models/chats_dto.dart';
import 'package:instagramultra/features/home/data/models/mapper/chats_mapper.dart';

class ChatRemoteDatasource {
  LogService log = LogService();
  final DioService dio = DioService();

  Future<List<ChatsEntities>> getChats() async {
    final url = Apiendoint.chat(ChatEndpoint.GET_CHATS);
    final response = await dio.get(url: url);
    if (response.statusCode == 200) {
      log.info(
          '${response.statusCode}  :Get chats : ${response.data['data'][0]}');
    } else {
      log.error('${response.statusCode}:Get chats   ${response.data}');
    }

    final result = (response.data['data'] as List)
        .map((e) => ChatsDto.fromJson(e).toEntity())
        .toList();
    return result;
  }
}
