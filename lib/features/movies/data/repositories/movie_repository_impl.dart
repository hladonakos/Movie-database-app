import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repositories/movie_repository.dart';
import '../datasources/movie_remote_datasource.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource _remoteDataSource;

  MovieRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies({int page = 1}) async {
    return _getMovies(() => _remoteDataSource.getPopularMovies(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies({int page = 1}) async {
    return _getMovies(() => _remoteDataSource.getTopRatedMovies(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies(
      {int page = 1}) async {
    return _getMovies(() => _remoteDataSource.getNowPlayingMovies(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcomingMovies({int page = 1}) async {
    return _getMovies(() => _remoteDataSource.getUpcomingMovies(page: page));
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(int movieId) async {
    try {
      final result = await _remoteDataSource.getMovieDetails(movieId);
      return Right(result.toEntity());
    } on DioException catch (e) {
      return Left(_handleDioError(e));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies(
    String query, {
    int page = 1,
  }) async {
    return _getMovies(() => _remoteDataSource.searchMovies(query, page: page));
  }

  Future<Either<Failure, List<Movie>>> _getMovies(
    Future<dynamic> Function() call,
  ) async {
    try {
      final response = await call();
      final movies = response.results.map((m) => m.toEntity()).toList();
      return Right(movies);
    } on DioException catch (e) {
      return Left(_handleDioError(e));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  Failure _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return const Failure.network();
      case DioExceptionType.badResponse:
        return Failure.server(
          message: e.response?.statusMessage ?? 'Server error',
          statusCode: e.response?.statusCode,
        );
      default:
        return Failure.unknown(message: e.message ?? 'Unknown error');
    }
  }
}

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  return MovieRepositoryImpl(ref.watch(movieRemoteDataSourceProvider));
});
