import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';

import '../../widgets/normal_text.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    Key? key,
    required this.size,
    required this.movieDesc,
  }) : super(key: key);

  final String movieDesc;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      2,
      Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.2, vertical: size.height * 0.02),
        child: NormalText(text: movieDesc, size: 16, maxline: 4),
      ),
    );
  }
}
