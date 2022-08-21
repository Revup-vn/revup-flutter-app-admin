import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'image_error.dart';
import 'image_loading.dart';

class ImagePopulated extends StatelessWidget {
  const ImagePopulated({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width * .7,
        imageUrl: url,
        errorWidget: (_, __, dynamic ___) => const ImageError(),
        placeholder: (_, __) => const ImageLoading(),
      );
}
