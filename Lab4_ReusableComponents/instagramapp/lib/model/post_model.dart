import 'user_model.dart';

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
