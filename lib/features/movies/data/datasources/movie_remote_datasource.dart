import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../models/movie_model.dart';

abstract class MovieRemoteDataSource {
  Future<MovieResponse> getPopularMovies({int page = 1});
  Future<MovieResponse> getTopRatedMovies({int page = 1});
  Future<MovieResponse> getNowPlayingMovies({int page = 1});
  Future<MovieResponse> getUpcomingMovies({int page = 1});
  Future<MovieDetailsModel> getMovieDetails(int movieId);
  Future<MovieResponse> searchMovies(String query, {int page = 1});
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final Dio _dio;

  MovieRemoteDataSourceImpl(this._dio);

  @override
  Future<MovieResponse> getPopularMovies({int page = 1}) async {
    final response = await _dio.get(
      ApiConstants.popularMovies,
      queryParameters: {'page': page},
    );
    return MovieResponse.fromJson(response.data);
  }

  @override
  Future<MovieResponse> getTopRatedMovies({int page = 1}) async {
    final response = await _dio.get(
      ApiConstants.topRatedMovies,
      queryParameters: {'page': page},
    );
    return MovieResponse.fromJson(response.data);
  }

  @override
  Future<MovieResponse> getNowPlayingMovies({int page = 1}) async {
    final response = await _dio.get(
      ApiConstants.nowPlayingMovies,
      queryParameters: {'page': page},
    );
    return MovieResponse.fromJson(response.data);
  }

  @override
  Future<MovieResponse> getUpcomingMovies({int page = 1}) async {
    final response = await _dio.get(
      ApiConstants.upcomingMovies,
      queryParameters: {'page': page},
    );
    return MovieResponse.fromJson(response.data);
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(int movieId) async {
    final response = await _dio.get(
      '${ApiConstants.movieDetails}/$movieId',
    );
    return MovieDetailsModel.fromJson(response.data);
  }

  @override
  Future<MovieResponse> searchMovies(String query, {int page = 1}) async {
    final response = await _dio.get(
      ApiConstants.searchMovies,
      queryParameters: {
        'query': query,
        'page': page,
      },
    );
    return MovieResponse.fromJson(response.data);
  }
}

final movieRemoteDataSourceProvider = Provider<MovieRemoteDataSource>((ref) {
  return MovieRemoteDataSourceImpl(ref.watch(dioProvider));
});
