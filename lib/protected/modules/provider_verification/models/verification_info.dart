import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'verification_info.freezed.dart';

@freezed
class VerificationInfo with _$VerificationInfo {
  const factory VerificationInfo({
    required String id,
    required String name,
    required String avatar,
    required String idImg,
    required String idCardNum,
    required String phone,
    required DateTime dob,
    required String address,
    required String email,
    required DateTime created,
    required String bio,
    required bool needToReVerify,
  }) = _VerificationInfo;

  factory VerificationInfo.fromDto(AppUser user) => user.maybeMap(
        orElse: () => throw NullThrownError(),
        provider: (v) => VerificationInfo(
          id: v.uuid,
          name: '${v.firstName} ${v.lastName}',
          avatar: v.avatarUrl,
          idImg: v.idCardImage,
          idCardNum: v.idCardNum,
          phone: v.phone,
          dob: v.dob,
          address: v.addr,
          email: v.email,
          bio: v.bio,
          created: v.createdTime,
          needToReVerify: v.needToUpdateInfo,
        ),
      );
}
