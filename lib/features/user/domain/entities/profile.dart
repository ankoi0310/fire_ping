class Profile {
  const Profile({
    required this.id,
    required this.fullName,
    required this.avatarUrl,
    required this.updatedAt,
  });

  final String id;
  final String fullName;
  final String? avatarUrl;
  final DateTime? updatedAt;
}
