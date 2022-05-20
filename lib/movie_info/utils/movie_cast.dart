import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';

class MovieCast extends StatelessWidget {
  const MovieCast({
    Key? key,
    required this.size,
    required this.movieCast,
  }) : super(key: key);

  final Size size;

  final dynamic movieCast;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      3,
      Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.040),
        height: size.height * 0.05,
        width: size.width * 0.1,
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.01,
              left: size.width * 0.075,
              child: Container(
                padding: EdgeInsets.only(
                  left: size.width * 0.1,
                  right: size.width * 0.05,
                ),
                width: 135,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.searchBarColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-5, -1),
                      blurRadius: 2,
                      color: AppColors.whiteColor.withOpacity(0.75),
                    )
                  ],
                ),
                child: Center(
                  child: BigText(
                    align: TextAlign.justify,
                    text: movieCast["castName"] as String,
                    size: 13,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.all(4),
                width: size.width * 0.15,
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.backgroundColor,
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2, color: AppColors.whiteColor),
                    shape: BoxShape.circle,
                    color: AppColors.searchBarColor,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        movieCast["castImage"] as String,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
