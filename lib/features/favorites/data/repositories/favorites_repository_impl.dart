import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import 'package:movie/features/favorites/domain/repositories/favorites_repository.dart';
import '../datasources/favorites_local_datasource.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesLocalDataSource _localDataSource;

  FavoritesRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, List<int>>> getFavoriteMovieIds() async {
    try {
      final ids = await _localDataSource.getFavoriteMovieIds();
      return Right(ids);
    } catch (e) {
      return Left(Failure.cache(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> addFavorite(int movieId) async {
    try {
      await _localDataSource.addFavorite(movieId);
      return const Right(unit);
    } catch (e) {
      return Left(Failure.cache(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFavorite(int movieId) async {
    try {
      await _localDataSource.removeFavorite(movieId);
      return const Right(unit);
    } catch (e) {
      return Left(Failure.cache(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isFavorite(int movieId) async {
    try {
      final result = await _localDataSource.isFavorite(movieId);
      return Right(result);
    } catch (e) {
      return Left(Failure.cache(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> toggleFavorite(int movieId) async {
    try {
      final isFav = await _localDataSource.isFavorite(movieId);
      if (isFav) {
        await _localDataSource.removeFavorite(movieId);
      } else {
        await _localDataSource.addFavorite(movieId);
      }
      return const Right(unit);
    } catch (e) {
      return Left(Failure.cache(message: e.toString()));
    }
  }

  @override
  Stream<List<int>> watchFavorites() {
    return _localDataSource.watchFavorites();
  }
}

final favoritesRepositoryProvider = Provider<FavoritesRepository>((ref) {
  return FavoritesRepositoryImpl(ref.watch(favoritesLocalDataSourceProvider));
});
