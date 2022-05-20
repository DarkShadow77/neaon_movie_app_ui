import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';

import '../screen/discover_page.dart';
import 'utils/app_icon.dart';

class MovieNavigator extends StatelessWidget {
  const MovieNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      left: 20,
      right: 20,
      child: FadeAnimation(
        3,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DiscoverPage();
                    },
                  ),
                );
              },
              child: AppIcon(icon: SFSymbols.arrow_left),
            ),
            AppIcon(icon: SFSymbols.line_horizontal_3)
          ],
        ),
      ),
    );
  }
}
