import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../features/presentation/screens/home_screen.dart';
import '../../features/presentation/screens/movie_details_screen.dart';
import '../../features/presentation/screens/movie_list_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import '../../features/favorites/presentation/screens/favorites_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: MovieDetailsRoute.page,
          path: '/movie/:id',
        ),
        AutoRoute(
          page: SearchRoute.page,
          path: '/search',
        ),
        AutoRoute(
          page: FavoritesRoute.page,
          path: '/favorites',
        ),
        AutoRoute(
          page: MovieListRoute.page,
          path: '/movies/:category',
        ),
      ];
}
