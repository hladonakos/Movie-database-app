import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../models/movie_model.dart';

abstract class MovieRemoteDatasource {
 Future<MovieResponse> getPopularMovies({int page = 1});
  Future<MovieResponse> getTopRatedMovies({int page = 1});
  Future<MovieResponse> getNowPlayingMovies({int page = 1});
  Future<MovieResponse> getUpcomingMovies({int page = 1});
  Future<MovieDetailsModel> getMovieDetails(int movieId);
  Future<MovieResponse> searchMovies(String query, {int page = 1});
}

class MovieRemoteDataSourceImpl implements MovieRemoteDatasource {
  fina Dio _dio;

  MovieRemoteDataSourceImpl(this._dio);

  @override
  Future<MovieResponse> getPopularMovies({int page = 1}) async {
    final response = await _dio.get(
      ApiConstants.popularMovies,
      queryParameters: {'page': page},
    );
  return MovieResponse.fromJson(response.data);

  }




}