import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

import '../utils/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      height: size.height * 0.075,
      child: Stack(
        children: [
          Align(
            child: CircleGreen(size: size),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.27,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(SFSymbols.house_fill,
                          size: 25, color: AppColors.whiteColor),
                      Icon(SFSymbols.play_rectangle_fill,
                          size: 25, color: AppColors.whiteColor),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.27,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(SFSymbols.rectangle_stack_fill,
                          size: 25, color: AppColors.whiteColor),
                      Icon(SFSymbols.arrow_down_circle_fill,
                          size: 25, color: AppColors.whiteColor),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Transform.translate(
              offset: Offset(0, -12),
              child: Container(
                padding: EdgeInsets.all(3),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.mainPink,
                      AppColors.mainGreen,
                    ],
                    stops: [
                      0.3,
                      0.8,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.backgroundColor.withOpacity(0.7),
                        AppColors.backgroundColor,
                      ],
                      stops: [
                        0.1,
                        0.6,
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Icon(SFSymbols.search,
                            size: 25, color: AppColors.whiteColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleGreen extends StatelessWidget {
  const CircleGreen({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.translate(
        offset: Offset(-130, 0),
        child: Container(
          width: size.width * 0.45,
          height: size.height * 0.50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                blurRadius: 100,
                color: AppColors.mainGreen.withOpacity(0.3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
