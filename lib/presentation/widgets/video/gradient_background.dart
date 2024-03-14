import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;

  const GradientBackground(
      {super.key,
      this.colors = const [Colors.transparent, Colors.black],
      this.stops = const [0.6, 1]})
      : assert(colors.length == stops.length,
            'colors and stops length must be equal');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: colors,
                    stops: stops))));
  }
}
