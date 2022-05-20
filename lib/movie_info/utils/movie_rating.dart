import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';

import '../../utils/colors.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      2,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            spacing: 8,
            children: List.generate(
              3,
              (index) => Icon(Icons.star, size: 14, color: AppColors.starColor),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Wrap(
            spacing: 8,
            children: List.generate(
              2,
              (index) =>
                  Icon(Icons.star, size: 14, color: AppColors.whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
