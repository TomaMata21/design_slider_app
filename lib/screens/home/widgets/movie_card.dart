import 'package:design_slide/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: Column(
          children: [
            Expanded(
              child: buildImage(movie: movie),
            ),
            const Gap(4),
            Text(
              movie.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Gap(4),
            buildGenre(movie: movie),
            const Gap(4),
            buildRating(movie: movie),
            const Gap(4),
            const Text(
              "...",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage({required Movie movie}) => Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          child: Image.asset(
            movie.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget buildGenre({required Movie movie}) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
        children: movie.genres
            .map(
              (genre) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    genre,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      );

  Widget buildRating({required Movie movie}) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(movie.rating.toStringAsFixed(1)),
          const Gap(10),
          ...List.generate(
            movie.stars,
            (index) => const Icon(
              Icons.star,
              size: 18,
              color: Colors.orange,
            ),
          ),
        ],
      );
}
