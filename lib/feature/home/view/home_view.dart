import 'package:architecture_template/product/state/posts/posts_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

part 'mixin/home_view_mixin.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with _HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PostsBloc(_posts),
        ),
      ],
      child: HomeUi(posts: _posts),
    );
  }
}

class HomeUi extends StatelessWidget {
  const HomeUi({
    super.key,
    required this.posts,
  });
  final RepositoryPosts posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _ListOfPosts(),
          ],
        ),
      ),
    );
  }

  BlocBuilder<PostsBloc, PostsState> _ListOfPosts() {
    return BlocBuilder<PostsBloc, PostsState>(
      bloc: PostsBloc(posts)..add(const GetPosts()),
      builder: (context, state) {
        if (state is Loading) {
          return const CircularProgressIndicator();
        }
        if (state is Failed) {
          return Center(
            child: Text(state.message),
          );
        }
        if (state is Success) {
          return Column(
            children: state.posts
                .map(
                  (e) => ListTile(
                    leading: const Icon(Icons.radar),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                    subtitle: Text(e.title ?? ''),
                    title: Text(e.body ?? ''),
                  ),
                )
                .toList(),
          );
        }
        return const SizedBox();
      },
    );
  }
}
