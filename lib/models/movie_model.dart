class Movie {
  final String imageUrl;
  final String name;
  final double rating;
  final int stars;
  final List<String> genres;

  Movie({
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.genres,
    required this.stars,
  });
}
