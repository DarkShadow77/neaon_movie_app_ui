import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';
import '../../widgets/big_text.dart';

class MovieName extends StatelessWidget {
  const MovieName({Key? key, required this.movieName, required this.size})
      : super(key: key);

  final String movieName;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      3,
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.23),
        child: BigText(
          text: movieName,
          size: 24,
          color: Colors.white.withOpacity(0.85),
        ),
      ),
    );
  }
}
