import 'package:flutter/material.dart';

import '../utils/colors.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.02,
      ),
      decoration: BoxDecoration(
        color: AppColors.searchBarColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
