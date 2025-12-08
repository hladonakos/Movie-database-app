import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';

abstract class FavoritesRepository {
  Future<Either<Failure, List<int>>> getFavoriteMovieIds();
  Future<Either<Failure, Unit>> addFavorite(int movieId);
  Future<Either<Failure, Unit>> removeFavorite(int movieId);
  Future<Either<Failure, bool>> isFavorite(int movieId);
  Future<Either<Failure, Unit>> toggleFavorite(int movieId);
  Stream<List<int>> watchFavorites();
}
