import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:movie/features/movies/domain/entities/movie.dart';

final popularMoviesProvider =
    FutureProvider.autoDispose.family<List<Movie>, int>((ref, page) async {
  final repository = ref.watch(movieRepositoryProvider);
  final result = await repository.getPopularMovies(page: page);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (movies) => movies,
  );
});

final topRatedMoviesProvider =
    FutureProvider.autoDispose.family<List<Movie>, int>((ref, page) async {
  final repository = ref.watch(movieRepositoryProvider);
  final result = await repository.getTopRatedMovies(page: page);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (movies) => movies,
  );
});

final nowPlayingMoviesProvider =
    FutureProvider.autoDispose.family<List<Movie>, int>((ref, page) async {
  final repository = ref.watch(movieRepositoryProvider);
  final result = await repository.getNowPlayingMovies(page: page);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (movies) => movies,
  );
});

final upcomingMoviesProvider =
    FutureProvider.autoDispose.family<List<Movie>, int>((ref, page) async {
  final repository = ref.watch(movieRepositoryProvider);
  final result = await repository.getUpcomingMovies(page: page);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (movies) => movies,
  );
});

final movieDetailsProvider =
    FutureProvider.autoDispose.family<MovieDetails, int>((ref, movieId) async {
  final repository = ref.watch(movieRepositoryProvider);
  final result = await repository.getMovieDetails(movieId);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (details) => details,
  );
});

final searchQueryProvider = StateProvider<String>((ref) => '');

final searchResultsProvider =
    FutureProvider.autoDispose<List<Movie>>((ref) async {
  final query = ref.watch(searchQueryProvider);

  if (query.isEmpty) {
    return [];
  }

  await Future.delayed(const Duration(milliseconds: 500));

  if (ref.watch(searchQueryProvider) != query) {
    throw Exception('Query changed');
  }

  final repository = ref.watch(movieRepositoryProvider);
  final result = await repository.searchMovies(query);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (movies) => movies,
  );
});

enum MovieCategory { popular, topRated, nowPlaying, upcoming }

final selectedCategoryProvider = StateProvider<MovieCategory>(
  (ref) => MovieCategory.popular,
);
