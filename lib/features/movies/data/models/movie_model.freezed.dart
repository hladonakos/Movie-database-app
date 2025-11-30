// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? releaseDate = null,
    Object? genreIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? releaseDate = null,
    Object? genreIds = null,
  }) {
    return _then(_$MovieModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl extends _MovieModel {
  const _$MovieModelImpl(
      {required this.id,
      required this.title,
      required this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount,
      @JsonKey(name: 'release_date') this.releaseDate = '',
      @JsonKey(name: 'genre_ids') final List<int> genreIds = const []})
      : _genreIds = genreIds,
        super._();

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, overview: $overview, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, voteCount: $voteCount, releaseDate: $releaseDate, genreIds: $genreIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      overview,
      posterPath,
      backdropPath,
      voteAverage,
      voteCount,
      releaseDate,
      const DeepCollectionEquality().hash(_genreIds));

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel extends MovieModel {
  const factory _MovieModel(
      {required final int id,
      required final String title,
      required final String overview,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'vote_average') required final double voteAverage,
      @JsonKey(name: 'vote_count') required final int voteCount,
      @JsonKey(name: 'release_date') final String releaseDate,
      @JsonKey(name: 'genre_ids') final List<int> genreIds}) = _$MovieModelImpl;
  const _MovieModel._() : super._();

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  double get budget => throw _privateConstructorUsedError;
  double get revenue => throw _privateConstructorUsedError;
  List<GenreModel> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<ProductionCompanyModel> get productionCompanies =>
      throw _privateConstructorUsedError;

  /// Serializes this MovieDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsModelCopyWith<$Res> {
  factory $MovieDetailsModelCopyWith(
          MovieDetailsModel value, $Res Function(MovieDetailsModel) then) =
      _$MovieDetailsModelCopyWithImpl<$Res, MovieDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'release_date') String releaseDate,
      int runtime,
      String status,
      String? tagline,
      double budget,
      double revenue,
      List<GenreModel> genres,
      @JsonKey(name: 'production_companies')
      List<ProductionCompanyModel> productionCompanies});
}

/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res, $Val extends MovieDetailsModel>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? releaseDate = null,
    Object? runtime = null,
    Object? status = null,
    Object? tagline = freezed,
    Object? budget = null,
    Object? revenue = null,
    Object? genres = null,
    Object? productionCompanies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      productionCompanies: null == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompanyModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailsModelImplCopyWith<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  factory _$$MovieDetailsModelImplCopyWith(_$MovieDetailsModelImpl value,
          $Res Function(_$MovieDetailsModelImpl) then) =
      __$$MovieDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'release_date') String releaseDate,
      int runtime,
      String status,
      String? tagline,
      double budget,
      double revenue,
      List<GenreModel> genres,
      @JsonKey(name: 'production_companies')
      List<ProductionCompanyModel> productionCompanies});
}

/// @nodoc
class __$$MovieDetailsModelImplCopyWithImpl<$Res>
    extends _$MovieDetailsModelCopyWithImpl<$Res, _$MovieDetailsModelImpl>
    implements _$$MovieDetailsModelImplCopyWith<$Res> {
  __$$MovieDetailsModelImplCopyWithImpl(_$MovieDetailsModelImpl _value,
      $Res Function(_$MovieDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? releaseDate = null,
    Object? runtime = null,
    Object? status = null,
    Object? tagline = freezed,
    Object? budget = null,
    Object? revenue = null,
    Object? genres = null,
    Object? productionCompanies = null,
  }) {
    return _then(_$MovieDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      productionCompanies: null == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompanyModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailsModelImpl extends _MovieDetailsModel {
  const _$MovieDetailsModelImpl(
      {required this.id,
      required this.title,
      required this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount,
      @JsonKey(name: 'release_date') this.releaseDate = '',
      this.runtime = 0,
      this.status = '',
      this.tagline,
      this.budget = 0,
      this.revenue = 0,
      final List<GenreModel> genres = const [],
      @JsonKey(name: 'production_companies')
      final List<ProductionCompanyModel> productionCompanies = const []})
      : _genres = genres,
        _productionCompanies = productionCompanies,
        super._();

  factory _$MovieDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey()
  final int runtime;
  @override
  @JsonKey()
  final String status;
  @override
  final String? tagline;
  @override
  @JsonKey()
  final double budget;
  @override
  @JsonKey()
  final double revenue;
  final List<GenreModel> _genres;
  @override
  @JsonKey()
  List<GenreModel> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<ProductionCompanyModel> _productionCompanies;
  @override
  @JsonKey(name: 'production_companies')
  List<ProductionCompanyModel> get productionCompanies {
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCompanies);
  }

  @override
  String toString() {
    return 'MovieDetailsModel(id: $id, title: $title, overview: $overview, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, voteCount: $voteCount, releaseDate: $releaseDate, runtime: $runtime, status: $status, tagline: $tagline, budget: $budget, revenue: $revenue, genres: $genres, productionCompanies: $productionCompanies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      overview,
      posterPath,
      backdropPath,
      voteAverage,
      voteCount,
      releaseDate,
      runtime,
      status,
      tagline,
      budget,
      revenue,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_productionCompanies));

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      __$$MovieDetailsModelImplCopyWithImpl<_$MovieDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailsModel extends MovieDetailsModel {
  const factory _MovieDetailsModel(
          {required final int id,
          required final String title,
          required final String overview,
          @JsonKey(name: 'poster_path') final String? posterPath,
          @JsonKey(name: 'backdrop_path') final String? backdropPath,
          @JsonKey(name: 'vote_average') required final double voteAverage,
          @JsonKey(name: 'vote_count') required final int voteCount,
          @JsonKey(name: 'release_date') final String releaseDate,
          final int runtime,
          final String status,
          final String? tagline,
          final double budget,
          final double revenue,
          final List<GenreModel> genres,
          @JsonKey(name: 'production_companies')
          final List<ProductionCompanyModel> productionCompanies}) =
      _$MovieDetailsModelImpl;
  const _MovieDetailsModel._() : super._();

  factory _MovieDetailsModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  int get runtime;
  @override
  String get status;
  @override
  String? get tagline;
  @override
  double get budget;
  @override
  double get revenue;
  @override
  List<GenreModel> get genres;
  @override
  @JsonKey(name: 'production_companies')
  List<ProductionCompanyModel> get productionCompanies;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) {
  return _GenreModel.fromJson(json);
}

/// @nodoc
mixin _$GenreModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreModelCopyWith<GenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreModelCopyWith<$Res> {
  factory $GenreModelCopyWith(
          GenreModel value, $Res Function(GenreModel) then) =
      _$GenreModelCopyWithImpl<$Res, GenreModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreModelCopyWithImpl<$Res, $Val extends GenreModel>
    implements $GenreModelCopyWith<$Res> {
  _$GenreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreModelImplCopyWith<$Res>
    implements $GenreModelCopyWith<$Res> {
  factory _$$GenreModelImplCopyWith(
          _$GenreModelImpl value, $Res Function(_$GenreModelImpl) then) =
      __$$GenreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GenreModelImplCopyWithImpl<$Res>
    extends _$GenreModelCopyWithImpl<$Res, _$GenreModelImpl>
    implements _$$GenreModelImplCopyWith<$Res> {
  __$$GenreModelImplCopyWithImpl(
      _$GenreModelImpl _value, $Res Function(_$GenreModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenreModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreModelImpl extends _GenreModel {
  const _$GenreModelImpl({required this.id, required this.name}) : super._();

  factory _$GenreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreModelImplCopyWith<_$GenreModelImpl> get copyWith =>
      __$$GenreModelImplCopyWithImpl<_$GenreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreModelImplToJson(
      this,
    );
  }
}

abstract class _GenreModel extends GenreModel {
  const factory _GenreModel(
      {required final int id, required final String name}) = _$GenreModelImpl;
  const _GenreModel._() : super._();

  factory _GenreModel.fromJson(Map<String, dynamic> json) =
      _$GenreModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of GenreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreModelImplCopyWith<_$GenreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductionCompanyModel _$ProductionCompanyModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCompanyModel.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompanyModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String? get originCountry => throw _privateConstructorUsedError;

  /// Serializes this ProductionCompanyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductionCompanyModelCopyWith<ProductionCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyModelCopyWith<$Res> {
  factory $ProductionCompanyModelCopyWith(ProductionCompanyModel value,
          $Res Function(ProductionCompanyModel) then) =
      _$ProductionCompanyModelCopyWithImpl<$Res, ProductionCompanyModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class _$ProductionCompanyModelCopyWithImpl<$Res,
        $Val extends ProductionCompanyModel>
    implements $ProductionCompanyModelCopyWith<$Res> {
  _$ProductionCompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompanyModelImplCopyWith<$Res>
    implements $ProductionCompanyModelCopyWith<$Res> {
  factory _$$ProductionCompanyModelImplCopyWith(
          _$ProductionCompanyModelImpl value,
          $Res Function(_$ProductionCompanyModelImpl) then) =
      __$$ProductionCompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class __$$ProductionCompanyModelImplCopyWithImpl<$Res>
    extends _$ProductionCompanyModelCopyWithImpl<$Res,
        _$ProductionCompanyModelImpl>
    implements _$$ProductionCompanyModelImplCopyWith<$Res> {
  __$$ProductionCompanyModelImplCopyWithImpl(
      _$ProductionCompanyModelImpl _value,
      $Res Function(_$ProductionCompanyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_$ProductionCompanyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompanyModelImpl extends _ProductionCompanyModel {
  const _$ProductionCompanyModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'logo_path') this.logoPath,
      @JsonKey(name: 'origin_country') this.originCountry})
      : super._();

  factory _$ProductionCompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompanyModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  @override
  String toString() {
    return 'ProductionCompanyModel(id: $id, name: $name, logoPath: $logoPath, originCountry: $originCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompanyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logoPath, originCountry);

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompanyModelImplCopyWith<_$ProductionCompanyModelImpl>
      get copyWith => __$$ProductionCompanyModelImplCopyWithImpl<
          _$ProductionCompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompanyModelImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompanyModel extends ProductionCompanyModel {
  const factory _ProductionCompanyModel(
          {required final int id,
          required final String name,
          @JsonKey(name: 'logo_path') final String? logoPath,
          @JsonKey(name: 'origin_country') final String? originCountry}) =
      _$ProductionCompanyModelImpl;
  const _ProductionCompanyModel._() : super._();

  factory _ProductionCompanyModel.fromJson(Map<String, dynamic> json) =
      _$ProductionCompanyModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  @JsonKey(name: 'origin_country')
  String? get originCountry;

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductionCompanyModelImplCopyWith<_$ProductionCompanyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) {
  return _MovieResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieResponse {
  int get page => throw _privateConstructorUsedError;
  List<MovieModel> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  /// Serializes this MovieResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieResponseCopyWith<MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) then) =
      _$MovieResponseCopyWithImpl<$Res, MovieResponse>;
  @useResult
  $Res call(
      {int page,
      List<MovieModel> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$MovieResponseCopyWithImpl<$Res, $Val extends MovieResponse>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieResponseImplCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$$MovieResponseImplCopyWith(
          _$MovieResponseImpl value, $Res Function(_$MovieResponseImpl) then) =
      __$$MovieResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<MovieModel> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$MovieResponseImplCopyWithImpl<$Res>
    extends _$MovieResponseCopyWithImpl<$Res, _$MovieResponseImpl>
    implements _$$MovieResponseImplCopyWith<$Res> {
  __$$MovieResponseImplCopyWithImpl(
      _$MovieResponseImpl _value, $Res Function(_$MovieResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$MovieResponseImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResponseImpl implements _MovieResponse {
  const _$MovieResponseImpl(
      {required this.page,
      required final List<MovieModel> results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$MovieResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResponseImplFromJson(json);

  @override
  final int page;
  final List<MovieModel> _results;
  @override
  List<MovieModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'MovieResponse(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieResponseImplCopyWith<_$MovieResponseImpl> get copyWith =>
      __$$MovieResponseImplCopyWithImpl<_$MovieResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResponseImplToJson(
      this,
    );
  }
}

abstract class _MovieResponse implements MovieResponse {
  const factory _MovieResponse(
          {required final int page,
          required final List<MovieModel> results,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$MovieResponseImpl;

  factory _MovieResponse.fromJson(Map<String, dynamic> json) =
      _$MovieResponseImpl.fromJson;

  @override
  int get page;
  @override
  List<MovieModel> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;

  /// Create a copy of MovieResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieResponseImplCopyWith<_$MovieResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
