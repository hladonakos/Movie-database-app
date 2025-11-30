import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/movie.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const MovieModel._();

  const factory MovieModel({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'release_date') @Default('') String releaseDate,
    @JsonKey(name: 'genre_ids') @Default([]) List<int> genreIds,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  /// Convert to domain entity
  Movie toEntity() => Movie(
        id: id,
        title: title,
        overview: overview,
        posterPath: posterPath,
        backdropPath: backdropPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
        releaseDate: releaseDate,
        genreIds: genreIds,
      );
}

@freezed
class MovieDetailsModel with _$MovieDetailsModel {
  const MovieDetailsModel._();

  const factory MovieDetailsModel({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'release_date') @Default('') String releaseDate,
    @Default(0) int runtime,
    @Default('') String status,
    String? tagline,
    @Default(0) double budget,
    @Default(0) double revenue,
    @Default([]) List<GenreModel> genres,
    @JsonKey(name: 'production_companies')
    @Default([])
    List<ProductionCompanyModel> productionCompanies,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);

  MovieDetails toEntity() => MovieDetails(
        id: id,
        title: title,
        overview: overview,
        posterPath: posterPath,
        backdropPath: backdropPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
        releaseDate: releaseDate,
        runtime: runtime,
        status: status,
        tagline: tagline,
        budget: budget,
        revenue: revenue,
        genres: genres.map((g) => g.toEntity()).toList(),
        productionCompanies:
            productionCompanies.map((p) => p.toEntity()).toList(),
      );
}

@freezed
class GenreModel with _$GenreModel {
  const GenreModel._();

  const factory GenreModel({
    required int id,
    required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

  Genre toEntity() => Genre(id: id, name: name);
}

@freezed
class ProductionCompanyModel with _$ProductionCompanyModel {
  const ProductionCompanyModel._();

  const factory ProductionCompanyModel({
    required int id,
    required String name,
    @JsonKey(name: 'logo_path') String? logoPath,
    @JsonKey(name: 'origin_country') String? originCountry,
  }) = _ProductionCompanyModel;

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyModelFromJson(json);

  ProductionCompany toEntity() => ProductionCompany(
        id: id,
        name: name,
        logoPath: logoPath,
        originCountry: originCountry,
      );
}

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse({
    required int page,
    required List<MovieModel> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
