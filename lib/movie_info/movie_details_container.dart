import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';
import 'package:neaon_movie_app_ui/movie_info/utils/movie_cast.dart';

import '../utils/colors.dart';
import '../widgets/Divider.dart';
import '../widgets/big_text.dart';
import '../widgets/normal_text.dart';
import 'utils/movie_description.dart';
import 'utils/movie_details.dart';
import 'utils/movie_name.dart';
import 'utils/movie_rating.dart';

class DetailContainer extends StatelessWidget {
  DetailContainer({
    Key? key,
    required this.movieName,
    required this.movieTimeLapse,
    required this.movieYear,
    required this.movieGenre,
    required this.movieDesc,
  }) : super(key: key);

  final String movieName;
  final String movieTimeLapse;
  final String movieYear;
  final String movieGenre;
  final String movieDesc;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height / 2.4,
      left: 0,
      right: 0,
      child: FadeAnimation(
        3,
        Container(
          child: Column(
            children: [
              MovieName(
                movieName: movieName,
                size: size,
              ),
              MovieDetails(
                size: size,
                movieTimeLapse: movieTimeLapse,
                movieYear: movieYear,
                movieGenre: movieGenre,
              ),
              MovieRating(),
              MovieDescription(
                size: size,
                movieDesc: movieDesc,
              ),
              Dividers(),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1,
                    vertical: size.height * 0.015),
                alignment: Alignment.centerLeft,
                child: BigText(
                  text: 'Casts',
                  size: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
