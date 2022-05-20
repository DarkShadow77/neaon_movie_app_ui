import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Dividers extends StatelessWidget {
  const Dividers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
      width: size.width * 0.8,
      child: Divider(
        color: AppColors.whiteColor.withOpacity(0.50),
        height: 2,
      ),
    );
  }
}
