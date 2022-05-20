import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/movie_info/utils/background.dart';
import 'package:neaon_movie_app_ui/movie_info/play_button.dart';
import 'package:neaon_movie_app_ui/movie_info/utils/movie_cast.dart';
import 'movie_cover.dart';
import 'movie_details_container.dart';
import 'movie_navigator.dart';

class Body extends StatefulWidget {
  Body({
    Key? key,
    required this.movieCover,
    required this.movieName,
    required this.movieYear,
    required this.movieGenre,
    required this.movieTimeLapse,
    required this.movieDesc,
    required this.movieCast,
  }) : super(key: key);

  final String movieCover;
  final String movieName;
  final String movieYear;
  final String movieGenre;
  final String movieTimeLapse;
  final String movieDesc;
  final List<dynamic> movieCast;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late ScrollController _scrollController;

  bool _isScrolled = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollChange);

    super.initState();
  }

  void _listenToScrollChange() {
    if (_scrollController.offset >= 50.0) {
      setState(() {
        _isScrolled = true;
      });
    } else {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: CustomScrollView(
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: size.height * 0.78,
                  child: Stack(
                    children: [
                      MovieCover(
                        size: size,
                        movieCover: widget.movieCover,
                      ),
                      MovieNavigator(),
                      PlayButton(
                        size: size,
                      ),
                      DetailContainer(
                        movieName: widget.movieName,
                        movieYear: widget.movieYear,
                        movieGenre: widget.movieGenre,
                        movieTimeLapse: widget.movieTimeLapse,
                        movieDesc: widget.movieDesc,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 3,
              childAspectRatio: (1 / .3),
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return MovieCast(
                    size: size, movieCast: widget.movieCast[index]);
              },
              childCount: widget.movieCast.length,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
