import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';

class MovieCover extends StatelessWidget {
  const MovieCover({
    Key? key,
    required this.size,
    required this.movieCover,
  }) : super(key: key);

  final Size size;
  final String movieCover;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      3,
      Container(
        width: double.infinity,
        height: size.height / 2.3,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              movieCover,
            ),
          ),
        ),
      ),
    );
  }
}
