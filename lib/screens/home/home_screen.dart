import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_slide/configs/data.dart';
import 'package:design_slide/screens/home/widgets/background_card.dart';
import 'package:design_slide/screens/home/widgets/buy_button.dart';
import 'package:design_slide/screens/home/widgets/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.close, color: Colors.white),
        actions: const [Icon(Icons.person_outline, color: Colors.white), SizedBox(width: 15)],
      ),
      body: Stack(
        children: [
          BackgroundCard(controller: controller),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CarouselSlider(
                  items: movies.map((movie) => MovieCard(movie: movie)).toList(),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    viewportFraction: 0.75,
                    height: height * 0.7,
                    enlargeCenterPage: true,
                    onPageChanged: (index, _) => controller.animateToPage(
                      index,
                      duration: const Duration(seconds: 1),
                      curve: Curves.ease,
                    ),
                  ),
                ),
                const BuyButton(),
                const Gap(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
