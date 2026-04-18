import 'package:fire_ping/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef VoidFuture = ResultFuture<Unit>;
typedef JsonData = Map<String, dynamic>;
