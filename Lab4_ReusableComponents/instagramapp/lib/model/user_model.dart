class UserModel {
  const UserModel({
    required this.username,
    required this.avatarUrl,
    this.displayName,
    this.postCount = 0,
    this.followerCount = 0,
    this.mutualInfo,
  });

  final String username;
  final String avatarUrl;
  final String? displayName;
  final int postCount;
  final int followerCount;
  final String? mutualInfo;
}

class StoryModel {
  const StoryModel({required this.user, this.isAddStory = false});

  final UserModel user;
  final bool isAddStory;
}

class PostModel {
  const PostModel({
    required this.user,
    required this.imageUrls,
    required this.caption,
    this.location,
    this.likes = 0,
  });

  final UserModel user;
  final List<String> imageUrls;
  final String caption;
  final String? location;
  final int likes;
}

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
