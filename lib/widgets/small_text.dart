import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    Key? key,
    required this.text,
    required this.size,
    this.maxline = 2,
  }) : super(key: key);

  final String text;
  final double size;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxline,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white.withOpacity(0.5),
        fontSize: size,
        fontWeight: FontWeight.w400,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
