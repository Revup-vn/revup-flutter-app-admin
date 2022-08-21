part of 'verification_detail_cubit.dart';

@freezed
class VerificationDetailState with _$VerificationDetailState {
  const factory VerificationDetailState.initial() = _initial;
  const factory VerificationDetailState.saved(String message) = _save;
  const factory VerificationDetailState.loading(Completer<Unit> isDone) =
      _loading;
  const factory VerificationDetailState.failed() = _failed;
}
