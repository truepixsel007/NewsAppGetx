import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Loadingcontainer extends StatelessWidget {
  final double width;
  final double height;
  const Loadingcontainer({super.key,
    required this.width,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).colorScheme.surface,
      highlightColor: Theme.of(context).colorScheme.primaryContainer,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
