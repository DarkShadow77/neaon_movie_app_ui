import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CirclePink extends StatelessWidget {
  const CirclePink({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Transform.translate(
        offset: Offset(250.0, 180.0),
        child: Container(
          width: size.width * 0.95,
          height: size.height * 0.50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 100,
                color: AppColors.mainPink.withOpacity(0.2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
