import 'package:architecture_template/product/cache/model/posts_cache_model.dart';
import 'package:core/core.dart';

final class ProductCache {
  ProductCache({required CacheManager cacheManager})
      : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  Future<void> init() async {
    await _cacheManager.init(
      items: [
        PostsCacheModel.empty(),
      ],
    );
  }

  late final HiveCacheOperation<PostsCacheModel> postsCacheOperation =
      HiveCacheOperation<PostsCacheModel>();
}
