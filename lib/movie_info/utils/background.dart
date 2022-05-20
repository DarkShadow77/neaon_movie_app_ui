import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.black,
              AppColors.backgroundColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 1]),
      ),
      child: child,
    );
  }
}
