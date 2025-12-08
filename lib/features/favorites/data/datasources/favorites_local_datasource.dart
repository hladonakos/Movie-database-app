import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> initFavoritesStorage() async {
  await Hive.initFlutter();
  await Hive.openBox<int>('favorites');
}

abstract class FavoritesLocalDataSource {
  Future<List<int>> getFavoriteMovieIds();
  Future<void> addFavorite(int movieId);
  Future<void> removeFavorite(int movieId);
  Future<bool> isFavorite(int movieId);
  Stream<List<int>> watchFavorites();
}

class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  static const String _boxName = 'favorites';

  Box<int> get _box => Hive.box<int>(_boxName);

  @override
  Future<List<int>> getFavoriteMovieIds() async {
    return _box.values.toList();
  }

  @override
  Future<void> addFavorite(int movieId) async {
    if (!_box.values.contains(movieId)) {
      await _box.add(movieId);
    }
  }

  @override
  Future<void> removeFavorite(int movieId) async {
    final key = _box.keys.firstWhere(
      (key) => _box.get(key) == movieId,
      orElse: () => null,
    );
    if (key != null) {
      await _box.delete(key);
    }
  }

  @override
  Future<bool> isFavorite(int movieId) async {
    return _box.values.contains(movieId);
  }

  @override
  Stream<List<int>> watchFavorites() {
    return _box.watch().map((_) => _box.values.toList());
  }
}

final favoritesLocalDataSourceProvider =
    Provider<FavoritesLocalDataSource>((ref) {
  return FavoritesLocalDataSourceImpl();
});
