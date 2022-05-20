import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';
import 'package:neaon_movie_app_ui/models/movies.dart';
import 'package:neaon_movie_app_ui/movie_info/body.dart';

class MovieInfoPage extends StatefulWidget {
  final Movies movies;
  const MovieInfoPage({Key? key, required this.movies}) : super(key: key);

  @override
  State<MovieInfoPage> createState() => _MovieInfoPageState();
}

class _MovieInfoPageState extends State<MovieInfoPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: FadeAnimation(
          2,
          Body(
            movieCover: widget.movies.movieCover,
            movieName: widget.movies.movieName,
            movieYear: widget.movies.movieYear,
            movieGenre: widget.movies.movieGenre,
            movieTimeLapse: widget.movies.movieTimeLapse,
            movieDesc: widget.movies.movieDesc,
            movieCast: widget.movies.movieCast,
          ),
        ),
      ),
    );
  }
}
