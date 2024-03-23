import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppImageWidget extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final BoxFit fit;

  const AppImageWidget({
    Key? key, // Mark key parameter as nullable
    required this.imageUrl,
    this.height = 100,
    this.width = 100,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (imageUrl.contains("assets"))
          ? Image.asset(
              imageUrl,
              width: width,
              height: height,
              fit: fit,
            )
          : CachedNetworkImage(
              imageUrl: imageUrl,
              width: width,
              height: height,
              fit: fit,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
    );
  }
}
