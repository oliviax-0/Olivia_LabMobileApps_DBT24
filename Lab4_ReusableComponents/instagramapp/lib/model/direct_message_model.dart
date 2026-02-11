import 'user_model.dart';

class DirectMessageModel {
  const DirectMessageModel({
    required this.sender,
    required this.text,
    required this.time,
    this.subtitle,
    this.attachmentImage,
    this.isStatus = false,
  });

  final UserModel sender;
  final String text;
  final String time;
  final String? subtitle;
  final String? attachmentImage;
  final bool isStatus;
}
