import 'package:design_slide/configs/assets.dart';
import 'package:design_slide/models/movie_model.dart';

final movies = [
  Movie(
    imageUrl: Assets.goodBoys,
    name: "Good Boys",
    rating: 6.7,
    genres: ["Adventure", "Comedy"],
    stars: 4,
  ),
  Movie(
    imageUrl: Assets.onceUponATime,
    name: "Once Upon a Time",
    rating: 7.6,
    genres: ["Comedy", "Drama"],
    stars: 4,
  ),
  Movie(
    imageUrl: Assets.joker,
    name: "Joker",
    rating: 8.4,
    genres: ["Police", "Drama"],
    stars: 4,
  ),
  Movie(
    imageUrl: Assets.hustle,
    name: "Hustle",
    rating: 5.4,
    genres: ["Police", "Comedy"],
    stars: 4,
  ),
];
