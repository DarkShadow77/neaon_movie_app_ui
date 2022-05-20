import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';
import 'package:neaon_movie_app_ui/screen/discover_page.dart';
import 'package:neaon_movie_app_ui/widgets/rounded_image.dart';

import '../utils/colors.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';
import 'backgound.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            RoundedImage(),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.width * 0.02),
              width: size.width * 0.8,
              height: size.height * 0.19,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.045),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeAnimation(
                    4,
                    BigText(
                      text: 'Watch movies in Virtual Reality',
                      size: 34,
                    ),
                  ),
                  FadeAnimation(
                    4,
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.15),
                      child: SmallText(
                        text: 'Download and watch offline wherever you are',
                        size: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FadeAnimation(
              4,
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
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.05),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.mainPink.withOpacity(0.7),
                        AppColors.mainGreen,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-20, 0),
                        blurRadius: 40,
                        color: AppColors.mainPink.withOpacity(0.4),
                      ),
                      BoxShadow(
                        offset: Offset(20, -0),
                        blurRadius: 40,
                        color: AppColors.mainGreen.withOpacity(0.4),
                      ),
                    ],
                  ),
                  width: size.width * 0.38,
                  height: size.height * 0.05,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.63),
                    ),
                    child: Text(
                      'Sign up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.07),
              height: size.height * 0.02,
              child: Center(
                child: new DotsIndicator(
                  dotsCount: 3,
                  position: 0,
                  decorator: DotsDecorator(
                    activeColor: AppColors.mainGreen,
                    size: const Size.square(8.0),
                    activeSize: const Size(25.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
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
