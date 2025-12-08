import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/core/router/app_router.dart';
import '../providers/movie_providers.dart';
import '../widgets/movie_grid.dart';
import 'package:movie/features/movies/domain/entities/movie.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Movie App',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: false,
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => context.router.push(const SearchRoute()),
              ),
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () => context.router.push(const FavoritesRoute()),
              ),
            ],
          ),

          // Now Playing Section
          SliverToBoxAdapter(
            child: _MovieSection(
              title: 'Now Playing',
              provider: nowPlayingMoviesProvider(1),
              onSeeAll: () =>
                  context.router.push(MovieListRoute(category: 'now_playing')),
            ),
          ),

          // Popular Section
          SliverToBoxAdapter(
            child: _MovieSection(
              title: 'Popular',
              provider: popularMoviesProvider(1),
              onSeeAll: () =>
                  context.router.push(MovieListRoute(category: 'popular')),
            ),
          ),

          // Top Rated Section
          SliverToBoxAdapter(
            child: _MovieSection(
              title: 'Top Rated',
              provider: topRatedMoviesProvider(1),
              onSeeAll: () =>
                  context.router.push(MovieListRoute(category: 'top_rated')),
            ),
          ),

          // Upcoming Section
          SliverToBoxAdapter(
            child: _MovieSection(
              title: 'Upcoming',
              provider: upcomingMoviesProvider(1),
              onSeeAll: () =>
                  context.router.push(MovieListRoute(category: 'upcoming')),
            ),
          ),

          // Bottom padding
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
        ],
      ),
    );
  }
}

class _MovieSection extends ConsumerWidget {
  final String title;
  final AutoDisposeFutureProvider<List<Movie>> provider;
  final VoidCallback? onSeeAll;

  const _MovieSection({
    required this.title,
    required this.provider,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesAsync = ref.watch(provider);

    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: moviesAsync.when(
        data: (movies) {
          debugPrint('===== DATA RECEIVED =====');
          debugPrint('Title: $title');
          debugPrint('Movies count: ${movies.length}');
          debugPrint('=========================');

          return MovieHorizontalList(
            title: title,
            movies: movies.take(10).toList(),
            onMovieTap: (movie) =>
                context.router.push(MovieDetailsRoute(id: movie.id)),
            onSeeAllTap: onSeeAll,
          );
        },
        loading: () {
          debugPrint('===== LOADING =====');
          debugPrint('Title: $title');
          debugPrint('===================');
          return _LoadingSection(title: title);
        },
        error: (error, stack) {
          debugPrint('===== PROVIDER ERROR =====');
          debugPrint('Title: $title');
          debugPrint('Error: $error');
          debugPrint('Error type: ${error.runtimeType}');
          debugPrint('Stack: $stack');
          debugPrint('==========================');

          return _ErrorSection(
            title: title,
            error: error.toString(),
            onRetry: () => ref.invalidate(provider),
          );
        },
      ),
    );
  }
}

class _LoadingSection extends StatelessWidget {
  final String title;

  const _LoadingSection({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 12),
        const SizedBox(
          height: 220,
          child: Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }
}

class _ErrorSection extends StatelessWidget {
  final String title;
  final String error;
  final VoidCallback? onRetry;

  const _ErrorSection({
    required this.title,
    required this.error,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 220,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Failed to load',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                if (onRetry != null) ...[
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: onRetry,
                    child: const Text('Retry'),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
