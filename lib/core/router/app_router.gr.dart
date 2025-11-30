// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [MovieDetailsScreen]
class MovieDetailsRoute extends PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({Key? key, required int id, List<PageRouteInfo>? children})
    : super(
        MovieDetailsRoute.name,
        args: MovieDetailsRouteArgs(key: key, id: id),
        rawPathParams: {'id': id},
        initialChildren: children,
      );

  static const String name = 'MovieDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MovieDetailsRouteArgs>(
        orElse: () => MovieDetailsRouteArgs(id: pathParams.getInt('id')),
      );
      return MovieDetailsScreen(key: args.key, id: args.id);
    },
  );
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchScreen();
    },
  );
}
