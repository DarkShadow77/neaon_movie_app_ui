import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText({
    Key? key,
    required this.text,
    required this.size,
    this.maxline = 2,
    this.align = TextAlign.center,
  }) : super(key: key);

  final String text;
  final double size;
  final int? maxline;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxline,
      textAlign: align,
      style: TextStyle(
        color: Colors.white.withOpacity(0.75),
        fontSize: size,
        fontWeight: FontWeight.w400,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
