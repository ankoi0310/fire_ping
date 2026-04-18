import 'package:fire_ping/core/shared/utils/typedefs.dart';

abstract class UseCase<ReturnType, Params> {
  ResultFuture<ReturnType> call(Params params);
}

abstract class UseCaseWithoutParams<ReturnType> {
  ResultFuture<ReturnType> call();
}
