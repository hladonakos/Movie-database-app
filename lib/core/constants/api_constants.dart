class ApiConstants {
  ApiConstants._();

  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String imageBaseUrl = 'https://image.tmdb.org/t/p';

  // TODO: Replace with your actual API key
  static const String apiKey = 'YOUR_API_KEY_HERE';

  // Image sizes
  static const String posterSize = 'w500';
  static const String backdropSize = 'w780';
  static const String profileSize = 'w185';

  // Endpoints
  static const String popularMovies = '/movie/popular';
  static const String topRatedMovies = '/movie/top_rated';
  static const String upcomingMovies = '/movie/upcoming';
  static const String nowPlayingMovies = '/movie/now_playing';
  static const String movieDetails = '/movie'; // /{movie_id}
  static const String searchMovies = '/search/movie';
  static const String movieCredits = '/movie'; // /{movie_id}/credits

  static String getPosterUrl(String? posterPath) {
    if (posterPath == null) return '';
    return '$imageBaseUrl/$posterSize$posterPath';
  }

  static String getBackdropUrl(String? backdropPath) {
    if (backdropPath == null) return '';
    return '$imageBaseUrl/$backdropSize$backdropPath';
  }
}
