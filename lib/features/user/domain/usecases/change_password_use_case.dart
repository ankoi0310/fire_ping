import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/core/usecase/usecase.dart';
import 'package:fire_ping/features/user/domain/repositories/user_repository.dart';

class ChangePasswordUseCase
    implements UseCase<void, ChangePasswordParams> {
  const ChangePasswordUseCase({required this.repository});

  final UserRepository repository;

  @override
  VoidFuture call(ChangePasswordParams params) async {
    return repository.changePassword(params);
  }
}

class ChangePasswordParams {
  const ChangePasswordParams({
    required this.currentPassword,
    required this.newPassword,
  });

  final String currentPassword;
  final String newPassword;
}
