import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.network({
    @Default('No internet connection') String message,
  }) = NetworkFailure;

  const factory Failure.cache({
    @Default('Cache error') String message,
  }) = CacheFailure;

  const factory Failure.unknown({
    @Default('An unexpected error occurred') String message,
  }) = UnknownFailure;
}
