import 'package:flutter/widgets.dart';

import 'extension_x.dart';

BoxDecoration appDecoration(Color color) => BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [0.25, 0.75, 0.90, 1.0],
        colors: [
          color,
          color.brighten(),
          color.brighten(33),
          color.brighten(50),
        ],
      ),
    );
