import 'package:flutter/material.dart';

import '../../../../shared/shared.dart';

class VerificationIdImageDisplay extends StatelessWidget {
  const VerificationIdImageDisplay({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Identification Card's Image",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        LimitedBox(
          maxHeight: 500,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child:
                url.isNotEmpty ? ImagePopulated(url: url) : const ImageEmpty(),
          ),
        ),
      ],
    );
  }
}
