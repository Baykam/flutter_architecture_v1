part of '../home_view.dart';

mixin _HomeViewMixin on State<HomeView> {
  late final RepositoryPosts _posts;

  @override
  void initState() {
    _posts = RepositoryPosts();
    super.initState();
  }
}
