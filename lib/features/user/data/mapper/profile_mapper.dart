import 'package:fire_ping/features/user/data/models/profile_model.dart';
import 'package:fire_ping/features/user/domain/entities/profile.dart';

extension ProfileMapper on ProfileModel {
  Profile toEntity() {
    return Profile(
      id: id,
      fullName: fullName,
      avatarUrl: avatarUrl,
      updatedAt: updatedAt,
    );
  }
}
