part of '../favorite_view.dart';

mixin _FavoriteViewMixin on State<FavoriteView> {
  // late final HiveCacheManager _cacheManager;

  @override
  void initState() {
    insideInit();
    super.initState();
  }

  void insideInit() {
    // _cacheManager.init(
    //   items: [
    //     CachePosts.empty(),
    //   ],
    // );
  }
}
