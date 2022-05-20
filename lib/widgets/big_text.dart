import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText({
    Key? key,
    required this.text,
    required this.size,
    this.color = Colors.white,
    this.align = TextAlign.center,
  }) : super(key: key);

  final String text;
  final double size;
  final Color? color;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
