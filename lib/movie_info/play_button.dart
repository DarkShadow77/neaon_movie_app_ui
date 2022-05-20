import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';

import '../utils/colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height / 2.5,
      left: 20,
      right: 20,
      child: FadeAnimation(
        3,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.mainPink,
                    AppColors.mainGreen,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-2, -3),
                    blurRadius: 8,
                    color: AppColors.mainPink,
                  ),
                  BoxShadow(
                    offset: Offset(2, 3),
                    blurRadius: 8,
                    color: AppColors.mainGreen,
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.searchBarColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  SFSymbols.play_fill,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
