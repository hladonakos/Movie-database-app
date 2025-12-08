import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../movies/data/repositories/movie_repository_impl.dart';
import 'package:movie/features/movies/domain/entities/movie.dart';
import '../../data/repositories/favorites_repository_impl.dart';
import '../../domain/repositories/favorites_repository.dart';

final favoriteMovieIdsProvider = FutureProvider<List<int>>((ref) async {
  final repository = ref.watch(favoritesRepositoryProvider);
  final result = await repository.getFavoriteMovieIds();
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (ids) => ids,
  );
});

final favoriteMovieIdsStreamProvider = StreamProvider<List<int>>((ref) {
  final repository = ref.watch(favoritesRepositoryProvider);
  return repository.watchFavorites();
});

final isFavoriteProvider =
    FutureProvider.autoDispose.family<bool, int>((ref, movieId) async {
  final repository = ref.watch(favoritesRepositoryProvider);
  final result = await repository.isFavorite(movieId);
  return result.fold(
    (failure) => false,
    (isFavorite) => isFavorite,
  );
});

final favoriteMoviesProvider = FutureProvider<List<Movie>>((ref) async {
  final favoriteIds = await ref.watch(favoriteMovieIdsProvider.future);
  final movieRepository = ref.watch(movieRepositoryProvider);

  final movies = <Movie>[];
  for (final id in favoriteIds) {
    final result = await movieRepository.getMovieDetails(id);
    result.fold(
      (failure) => null,
      (details) => movies.add(Movie(
        id: details.id,
        title: details.title,
        overview: details.overview,
        posterPath: details.posterPath,
        backdropPath: details.backdropPath,
        voteAverage: details.voteAverage,
        voteCount: details.voteCount,
        releaseDate: details.releaseDate,
        genreIds: details.genres.map((g) => g.id).toList(),
        isFavorite: true,
      )),
    );
  }

  return movies;
});

class FavoritesNotifier extends StateNotifier<AsyncValue<void>> {
  final FavoritesRepository _repository;
  final Ref _ref;

  FavoritesNotifier(this._repository, this._ref)
      : super(const AsyncValue.data(null));

  Future<void> toggleFavorite(int movieId) async {
    state = const AsyncValue.loading();

    final result = await _repository.toggleFavorite(movieId);

    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (_) {
        state = const AsyncValue.data(null);
        _ref.invalidate(favoriteMovieIdsProvider);
        _ref.invalidate(isFavoriteProvider(movieId));
      },
    );
  }

  Future<void> addFavorite(int movieId) async {
    state = const AsyncValue.loading();

    final result = await _repository.addFavorite(movieId);

    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (_) {
        state = const AsyncValue.data(null);
        _ref.invalidate(favoriteMovieIdsProvider);
      },
    );
  }

  Future<void> removeFavorite(int movieId) async {
    state = const AsyncValue.loading();

    final result = await _repository.removeFavorite(movieId);

    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (_) {
        state = const AsyncValue.data(null);
        _ref.invalidate(favoriteMovieIdsProvider);
      },
    );
  }
}

final favoritesNotifierProvider =
    StateNotifierProvider<FavoritesNotifier, AsyncValue<void>>((ref) {
  return FavoritesNotifier(
    ref.watch(favoritesRepositoryProvider),
    ref,
  );
});
