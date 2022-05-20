import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'circle_green.dart';
import 'circle_pink.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          CirclePink(
            size: size,
          ),
          CircleGreen(
            size: size,
          ),
          BottomCircleGreen(
            size: size,
          ),
          child,
        ],
      ),
    );
  }
}

class BottomCircleGreen extends StatelessWidget {
  const BottomCircleGreen({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.translate(
        offset: Offset(-200.0, 700.0),
        child: Container(
          width: size.width * 0.95,
          height: size.width * 0.60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 100,
                color: AppColors.mainGreen.withOpacity(0.2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
