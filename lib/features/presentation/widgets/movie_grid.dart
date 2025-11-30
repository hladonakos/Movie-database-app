import 'package:flutter/material.dart';
import '../../domain/entities/movie.dart';
import 'movie_card.dart';

class MovieGrid extends StatelessWidget {
  final List<Movie> movies;
  final Function(Movie)? onMovieTap;
  final Function(Movie)? onFavoriteToggle;
  final ScrollController? scrollController;
  final bool isLoading;

  const MovieGrid({
    super.key,
    required this.movies,
    this.onMovieTap,
    this.onFavoriteToggle,
    this.scrollController,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: movies.length + (isLoading ? 2 : 0),
      itemBuilder: (context, index) {
        if (index >= movies.length) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final movie = movies[index];
        return MovieCard(
          movie: movie,
          onTap: () => onMovieTap?.call(movie),
          onFavoriteToggle: onFavoriteToggle != null
              ? () => onFavoriteToggle?.call(movie)
              : null,
        );
      },
    );
  }
}

class MovieHorizontalList extends StatelessWidget {
  final String title;
  final List<Movie> movies;
  final Function(Movie)? onMovieTap;
  final VoidCallback? onSeeAllTap;

  const MovieHorizontalList({
    super.key,
    required this.title,
    required this.movies,
    this.onMovieTap,
    this.onSeeAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              if (onSeeAllTap != null)
                TextButton(
                  onPressed: onSeeAllTap,
                  child: const Text('See All'),
                ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return Padding(
                padding: EdgeInsets.only(
                  right: index < movies.length - 1 ? 12 : 0,
                ),
                child: SizedBox(
                  width: 140,
                  child: MovieCard(
                    movie: movie,
                    onTap: () => onMovieTap?.call(movie),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
