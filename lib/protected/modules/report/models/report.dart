import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'report.freezed.dart';

@freezed
class Report with _$Report {
  const factory Report({
    required RepairReport report,
    required String id,
    required String cName,
    required String cAvatar,
    required String pName,
    required String pAddress,
    required int amount,
    required ReportFeedback feedback,
  }) = _Report;

  factory Report.fromDto(
    RepairRecord rec,
    AppUser p,
    AppUser c,
  ) =>
      Report(
        report: rec.mapOrNull(finished: (val) => val.report!)!,
        id: rec.id,
        cName: '${c.firstName} ${c.lastName}',
        cAvatar: c.avatarUrl,
        pName: '${p.firstName} ${p.lastName}',
        pAddress: p.addr,
        amount: rec.money,
        feedback: rec.mapOrNull(finished: (val) => val.feedback)!,
      );
}