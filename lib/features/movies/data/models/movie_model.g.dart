// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
      releaseDate: json['release_date'] as String? ?? '',
      genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'release_date': instance.releaseDate,
      'genre_ids': instance.genreIds,
    };

_$MovieDetailsModelImpl _$$MovieDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
      releaseDate: json['release_date'] as String? ?? '',
      runtime: (json['runtime'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? '',
      tagline: json['tagline'] as String?,
      budget: (json['budget'] as num?)?.toDouble() ?? 0,
      revenue: (json['revenue'] as num?)?.toDouble() ?? 0,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      productionCompanies: (json['production_companies'] as List<dynamic>?)
              ?.map((e) =>
                  ProductionCompanyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MovieDetailsModelImplToJson(
        _$MovieDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'budget': instance.budget,
      'revenue': instance.revenue,
      'genres': instance.genres,
      'production_companies': instance.productionCompanies,
    };

_$GenreModelImpl _$$GenreModelImplFromJson(Map<String, dynamic> json) =>
    _$GenreModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreModelImplToJson(_$GenreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ProductionCompanyModelImpl _$$ProductionCompanyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCompanyModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logoPath: json['logo_path'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$$ProductionCompanyModelImplToJson(
        _$ProductionCompanyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_path': instance.logoPath,
      'origin_country': instance.originCountry,
    };

_$MovieResponseImpl _$$MovieResponseImplFromJson(Map<String, dynamic> json) =>
    _$MovieResponseImpl(
      page: (json['page'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
    );

Map<String, dynamic> _$$MovieResponseImplToJson(_$MovieResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
