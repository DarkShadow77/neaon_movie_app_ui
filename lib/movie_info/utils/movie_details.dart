import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';

import '../../widgets/normal_text.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({
    Key? key,
    required this.size,
    required this.movieYear,
    required this.movieGenre,
    required this.movieTimeLapse,
  }) : super(key: key);

  final Size size;
  final String movieYear;
  final String movieGenre;
  final String movieTimeLapse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NormalText(text: movieYear, size: 13),
              Icon(
                Icons.circle,
                color: Colors.white.withOpacity(0.75),
                size: 5,
              ),
              NormalText(text: movieGenre, size: 13),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.timelapse_rounded,
                color: Colors.white.withOpacity(0.75),
                size: 20,
              ),
              NormalText(text: movieTimeLapse, size: 13),
            ],
          )
        ],
      ),
    );
  }
}
