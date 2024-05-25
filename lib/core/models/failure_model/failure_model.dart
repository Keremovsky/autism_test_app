import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_model.freezed.dart';

@freezed
sealed class FailureModel with _$FailureModel {
  const factory FailureModel.unknownError(String message) = _UnknownError;
  const factory FailureModel.noConnection(String message) = _NoConnection;
  const factory FailureModel.connectionTimedOut(String message) = _ConnectionTimedOut;
  const factory FailureModel.responseError(String message) = _ResponseError;
}
