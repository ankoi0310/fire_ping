import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/core/usecase/usecase.dart';
import 'package:fire_ping/features/user/domain/repositories/user_repository.dart';

class SignOutUseCase implements UseCaseWithoutParams<void> {
  const SignOutUseCase({required this.repository});

  final UserRepository repository;

  @override
  ResultFuture<void> call() async {
    return repository.signOut();
  }
}
