import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/utils/colors.dart';

class AppIcon extends StatelessWidget {
  AppIcon(
      {Key? key,
      required this.icon,
      this.backgroundColor = const Color(0x00000000),
      this.iconColor = const Color(0xffffffff),
      this.size = 46})
      : super(key: key);

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(width: 3, color: AppColors.whiteColor),
      ),
      child: Icon(
        icon,
        size: 20,
        color: iconColor,
      ),
    );
  }
}
