import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'carousel_image_builder.dart';
import 'report_carousel_empty.dart';

class ReportCarousel extends StatelessWidget {
  const ReportCarousel({
    super.key,
    required this.imgs,
  });

  final List<String> imgs;

  @override
  Widget build(BuildContext context) => LimitedBox(
        maxHeight: 500,
        child: imgs.isEmpty
            ? const ReportCarouselEmpty()
            : CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                ),
                items: imgs
                    .asMap()
                    .entries
                    .map(
                      (item) => CarouselImageBuilder(data: item),
                    )
                    .toList(),
              ),
      );
}
