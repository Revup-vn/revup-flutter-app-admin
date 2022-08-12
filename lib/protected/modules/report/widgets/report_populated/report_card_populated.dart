import 'package:flutter/material.dart';

import 'package:revup_core/core.dart';

import '../../../../home/widgets/widgets.dart';
import '../../models/models.dart';

class ReportCardPopulated extends StatelessWidget {
  ReportCardPopulated({
    super.key,
    required Report data,
    this.onTap,
    required this.status,
  })  : user = data.cName,
        avatarUrl = data.cAvatar,
        desc = data.report.desc,
        createdDate = data.report.created;

  final String user;
  final String avatarUrl;
  final String desc;
  final DateTime createdDate;
  final String status;
  final VoidCallback? onTap;
  static const double size = 100;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        enableFeedback: onTap != null,
        child: Card(
          child: Row(
            children: [
              Container(
                height: size,
                padding: const EdgeInsets.all(size / 10),
                child: avatarUrl.isEmpty
                    ? AvatarFallback(name: user)
                    : AvatarPopulated(url: avatarUrl),
              ),
              Expanded(
                child: Container(
                  height: size,
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        desc,
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '$status || ${context.formatDate(createdDate)}',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .secondaryContainer
                      .withAlpha(250),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: size * .9,
                height: size,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context)
                      .colorScheme
                      .onSecondaryContainer
                      .withAlpha(120),
                ),
              ),
            ],
          ),
        ),
      );
}
