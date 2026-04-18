import 'package:fire_ping/features/user/domain/entities/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required User user,
    required Profile profile,
  }) = _AppUser;
}
