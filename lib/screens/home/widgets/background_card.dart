import 'package:design_slide/configs/data.dart';
import 'package:design_slide/models/movie_model.dart';
import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      reverse: true,
      physics: const NeverScrollableScrollPhysics(),
      controller: controller,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return _buildBackground(movie: movie);
      },
    );
  }

  Widget _buildBackground({required Movie movie}) => Stack(
    children: [
      SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
              movie.imageUrl,
              fit: BoxFit.cover,
            ),
      ),

      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.15, 0.75],
            colors: [
              Colors.white.withOpacity(0.0001),
              Colors.white,
            ]
          )
        ),
      ),
    ],
  );
}
