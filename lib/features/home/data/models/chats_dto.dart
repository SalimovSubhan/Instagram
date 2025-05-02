import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_dto.g.dart';
part 'chats_dto.freezed.dart';

@freezed
class ChatsDto with _$ChatsDto {
  const factory ChatsDto({
    required String sendUserId,
    String? sendUserName,
    String? sendUserImage,
    required int chatId,
    required String receiveUserId,
    String? receiveUserName,
    String? receiveUserImage,
  }) = _ChatsDto;

  factory ChatsDto.fromJson(Map<String, dynamic> json) =>
      _$ChatsDtoFromJson(json);
}
