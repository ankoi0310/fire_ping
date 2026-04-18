import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/features/user/domain/entities/profile.dart';
import 'package:fire_ping/features/user/domain/usecases/change_password_use_case.dart';

abstract class UserRepository {
  ResultFuture<Profile> getProfile();
  VoidFuture changePassword(ChangePasswordParams params);
}
