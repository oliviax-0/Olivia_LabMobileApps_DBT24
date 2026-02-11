import 'user_model.dart';

class StoryModel {
  const StoryModel({required this.user, this.isAddStory = false});

  final UserModel user;
  final bool isAddStory;
}
