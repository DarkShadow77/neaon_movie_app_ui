import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CircleGreen extends StatelessWidget {
  const CircleGreen({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.translate(
        offset: Offset(-200.0, -135.0),
        child: Container(
          width: size.width * 0.95,
          height: size.height * 0.40,
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
