import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/core/usecase/usecase.dart';
import 'package:fire_ping/features/user/domain/entities/profile.dart';
import 'package:fire_ping/features/user/domain/repositories/user_repository.dart';

class GetProfileUseCase implements UseCaseWithoutParams<Profile> {
  const GetProfileUseCase({required this.repository});

  final UserRepository repository;

  @override
  ResultFuture<Profile> call() async {
    return repository.getProfile();
  }
}
