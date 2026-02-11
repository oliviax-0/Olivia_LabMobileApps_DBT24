import 'user_model.dart';

class MessageModel {
  const MessageModel({
    required this.sender,
    required this.lastMessage,
    required this.time,
    this.isSeen = false,
  });

  final UserModel sender;
  final String lastMessage;
  final String time;
  final bool isSeen;
}
