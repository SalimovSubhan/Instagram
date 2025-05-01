class ChatsEntities {
  final String sendUserId;
  final String? sendUserName;
  final String? sendUserImage;
  final int chatId;
  final String receiveUserId;
  final String? receiveUserName;
  final String? receiveUserImage;
  ChatsEntities({
    required this.chatId,
    required this.receiveUserId,
    required this.receiveUserImage,
    required this.receiveUserName,
    required this.sendUserId,
    required this.sendUserImage,
    required this.sendUserName,
  });
}
