import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int ind,
    required String title,
    required String overview,
    String? posterPath,
    String? backdropPath,
    required double voteAverage,
    required int voteCouunt,
    required String releaseDate,
    @Default([]) List<int> genreIds,
    @Default(false) bool isFavorite,
  }) = _Movie;
}

@freezedclass
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required int id,
    required String title,
    required String overview,
    String? posterPath,
    String? backdropPath,
    required double voteAverage,
    required int voteCount,
    required String releaseDate,
    required int runtime,
    required String status,
    String? tagline,
    required double budget,
    required double revenue,
    @Default([]) List<Genre> genres,
    @Default([]) List<ProductionCompany> productionCompanies,
  }) = _MovieDetails;
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;
}

@freezed
class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    required int id,
    required String name,
    String? logoPath,
    String? originCountry,
  }) = _ProductionCompany;
}
