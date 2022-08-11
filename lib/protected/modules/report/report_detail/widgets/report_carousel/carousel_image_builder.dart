import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'report_image_error.dart';
import 'report_image_loading.dart';

class CarouselImageBuilder extends StatelessWidget {
  const CarouselImageBuilder({
    super.key,
    required this.data,
  });

  final MapEntry<int, String> data;

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        child: Stack(
          children: <Widget>[
            CachedNetworkImage(
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * .7,
              imageUrl: data.value,
              errorWidget: (_, __, dynamic ___) => const ReportImageError(),
              placeholder: (_, __) => const ReportImageLoading(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  'No. ${data.key + 1} image',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
}
