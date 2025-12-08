import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/favorites_providers.dart';

class FavoriteButton extends ConsumerWidget {
  final int movieId;
  final double size;
  final Color? activeColor;
  final Color? inactiveColor;

  const FavoriteButton({
    super.key,
    required this.movieId,
    this.size = 24,
    this.activeColor,
    this.inactiveColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(isFavoriteProvider(movieId));

    return isFavorite.when(
      data: (isFav) => IconButton(
        icon: Icon(
          isFav ? Icons.favorite : Icons.favorite_border,
          color: isFav
              ? (activeColor ?? Colors.red)
              : (inactiveColor ?? Colors.grey),
          size: size,
        ),
        onPressed: () {
          ref.read(favoritesNotifierProvider.notifier).toggleFavorite(movieId);
        },
      ),
      loading: () => SizedBox(
        width: size + 16,
        height: size + 16,
        child: const Center(
          child: SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      ),
      error: (_, __) => IconButton(
        icon: Icon(
          Icons.favorite_border,
          color: inactiveColor ?? Colors.grey,
          size: size,
        ),
        onPressed: () {
          ref.read(favoritesNotifierProvider.notifier).toggleFavorite(movieId);
        },
      ),
    );
  }
}

class FavoriteFab extends ConsumerWidget {
  final int movieId;

  const FavoriteFab({
    super.key,
    required this.movieId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(isFavoriteProvider(movieId));

    return isFavorite.when(
      data: (isFav) => FloatingActionButton(
        onPressed: () {
          ref.read(favoritesNotifierProvider.notifier).toggleFavorite(movieId);
        },
        child: Icon(
          isFav ? Icons.favorite : Icons.favorite_border,
        ),
      ),
      loading: () => const FloatingActionButton(
        onPressed: null,
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
      error: (_, __) => FloatingActionButton(
        onPressed: () {
          ref.read(favoritesNotifierProvider.notifier).toggleFavorite(movieId);
        },
        child: const Icon(Icons.favorite_border),
      ),
    );
  }
}
