import 'package:fpdart/fpdart.dart';
import 'package:hrm/models/entities/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FutureEitherVoid = FutureEither<void>;
