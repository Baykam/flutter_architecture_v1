import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///Custom image Network Widget
final class CustomNetworkImage extends StatelessWidget {
  ///Widgets const
  const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCacheSize = const CustomMemCacheSize(height: 200, width: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size = const Size(200, 200),
  });

  ///image source address
  final String? imageUrl;

  /// When image is not available then it will show empty widget
  final Widget? emptyWidget;

  /// When image is not available then it will show empty widget
  final Widget? loadingWidget;

  /// default mem cache size width [200] height [200]
  final CustomMemCacheSize memCacheSize;

  /// boxfit value is [BoxFit.cover]
  final BoxFit? boxFit;

  final Size? size;
  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) {
      return emptyWidget ?? const SizedBox();
    }

    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: memCacheSize.height,
      memCacheWidth: memCacheSize.width,
      fit: boxFit,
      height: size?.height,
      width: size?.width,
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error : { $value }');
      },
      progressIndicatorBuilder: (context, url, progress) =>
          loadingWidget ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
      errorWidget: (context, url, error) => emptyWidget ?? const SizedBox(),
    );
  }
}
