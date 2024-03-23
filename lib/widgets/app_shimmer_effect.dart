import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// Common shimmer effect widget for displaying while loading data.
class AppShimmer extends StatelessWidget {
  final Widget child;

  // Shimmer colors
  static Color shimmerBaseColor = Color.fromARGB(255, 202, 175, 175);
  static Color shimmerHighlightColor = Color.fromARGB(255, 234, 217, 217);

  const AppShimmer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHighlightColor,
      enabled: true,
      child: child,
    );
  }
}
