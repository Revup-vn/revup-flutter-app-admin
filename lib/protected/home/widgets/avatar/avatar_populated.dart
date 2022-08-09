import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'avatar_failure.dart';
import 'avatar_loading.dart';

class AvatarPopulated extends StatelessWidget {
  const AvatarPopulated({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        imageBuilder: (_, imageProvider) => CircleAvatar(
          maxRadius: 50,
          minRadius: 30,
          backgroundImage: imageProvider,
        ),
        errorWidget: (_, __, dynamic ___) => const AvatarFailure(),
        placeholder: (_, __) => const AvatarLoading(),
      );
}
