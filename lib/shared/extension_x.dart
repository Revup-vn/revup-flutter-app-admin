import 'dart:ui';

extension ColorX on Color {
  Color brighten([int percent = 10]) {
    assert(1 <= percent && percent <= 100, 'must be within 1-100 range');
    final p = percent / 100;

    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }
}
