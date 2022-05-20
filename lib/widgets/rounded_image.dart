import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/animation/FadeAnimation.dart';
import 'package:neaon_movie_app_ui/utils/colors.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FadeAnimation(
      4,
      Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
        padding: EdgeInsets.all(5),
        width: size.width * 0.85,
        height: size.height * 0.43,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              AppColors.mainPink.withOpacity(0.7),
              AppColors.backgroundColor.withOpacity(0.9),
              AppColors.mainGreen,
            ],
            stops: [
              0.3,
              0.45,
              0.9,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: FadeAnimation(
          2,
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  'assets/images/virtual.png',
                ),
              ),
            ),
            child: Stack(
              children: [
                RoundedImagePink(
                  size: size,
                ),
                RoundedImageGreen(
                  size: size,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedImagePink extends StatelessWidget {
  const RoundedImagePink({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.translate(
        offset: Offset(-100.0, -45.0),
        child: Container(
          width: size.width * 0.95,
          height: size.width * 0.60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 100,
                color: AppColors.mainPink.withOpacity(0.32),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedImageGreen extends StatelessWidget {
  const RoundedImageGreen({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Transform.translate(
        offset: Offset(130.0, 80.0),
        child: Container(
          width: size.width * 0.95,
          height: size.width * 0.85,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 100,
                color: AppColors.mainGreen.withOpacity(0.32),
              )
            ],
          ),
        ),
        /*Material(
          color: Colors.pink,
          shadowColor: Colors.blue,
          child: Padding(padding: EdgeInsets.all(120)),
          shape: CircleBorder(
            side: BorderSide(color: Colors.white, width: 30.0),
          ),
        ),*/
      ),
    );
  }
}
