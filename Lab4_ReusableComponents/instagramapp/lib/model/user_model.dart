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
