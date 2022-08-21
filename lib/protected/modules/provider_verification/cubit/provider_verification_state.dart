part of 'provider_verification_cubit.dart';

@freezed
class ProviderVerificationState with _$ProviderVerificationState {
  const factory ProviderVerificationState.initial() = _Initial;
  const factory ProviderVerificationState.empty() = _Empty;
  const factory ProviderVerificationState.loading() = _Loading;
  const factory ProviderVerificationState.failed(String message) = _Failed;
  const factory ProviderVerificationState.populated(
    List<VerificationInfo> infos,
  ) = _Populated;
}
