import 'user_model.dart';
import 'direct_message_model.dart';

class ConversationModel {
  const ConversationModel({
    required this.user,
    required this.messages,
    this.lastMessage,
    this.lastTime,
  });

  final UserModel user;
  final List<DirectMessageModel> messages;
  final String? lastMessage;
  final String? lastTime;
}
