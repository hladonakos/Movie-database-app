import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/core/router/app_router.dart';
import 'package:movie/features/movies/domain/entities/movie.dart';
import '../providers/movie_providers.dart';
import '../widgets/movie_grid.dart';

@RoutePage()
class MovieListScreen extends ConsumerStatefulWidget {
  final String category;

  const MovieListScreen({
    super.key,
    @PathParam('category') required this.category,
  });

  @override
  ConsumerState<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends ConsumerState<MovieListScreen> {
  final _scrollController = ScrollController();
  final List<Movie> _movies = [];
  int _currentPage = 1;
  bool _isLoadingMore = false;

  String get _title {
    switch (widget.category) {
      case 'popular':
        return 'Popular Movies';
      case 'top_rated':
        return 'Top Rated Movies';
      case 'now_playing':
        return 'Now Playing';
      case 'upcoming':
        return 'Upcoming Movies';
      default:
        return 'Movies';
    }
  }

  AutoDisposeFutureProviderFamily<List<Movie>, int> get _provider {
    switch (widget.category) {
      case 'popular':
        return popularMoviesProvider;
      case 'top_rated':
        return topRatedMoviesProvider;
      case 'now_playing':
        return nowPlayingMoviesProvider;
      case 'upcoming':
        return upcomingMoviesProvider;
      default:
        return popularMoviesProvider;
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMore();
    }
  }

  Future<void> _loadMore() async {
    if (_isLoadingMore) return;

    setState(() => _isLoadingMore = true);

    final nextPage = _currentPage + 1;
    final result = await ref.read(_provider(nextPage).future);

    setState(() {
      _movies.addAll(result);
      _currentPage = nextPage;
      _isLoadingMore = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final initialMoviesAsync = ref.watch(_provider(1));

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: initialMoviesAsync.when(
        data: (initialMovies) {
          if (_movies.isEmpty) {
            _movies.addAll(initialMovies);
          }

          return MovieGrid(
            movies: _movies,
            scrollController: _scrollController,
            isLoading: _isLoadingMore,
            onMovieTap: (movie) => context.router.push(
              MovieDetailsRoute(id: movie.id),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48),
              const SizedBox(height: 16),
              Text('Failed to load: $error'),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () => ref.invalidate(_provider(1)),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
