import 'package:flutter/material.dart';
import '../utils/colors.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          CirclePink(
            size: size,
          ),
          CircleGreen(
            size: size,
          ),
          child,
        ],
      ),
    );
  }
}

class CirclePink extends StatelessWidget {
  const CirclePink({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.translate(
        offset: Offset(-140.0, -25.0),
        child: Container(
          width: size.width * 0.95,
          height: size.width * 0.60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 100,
                color: AppColors.mainPink.withOpacity(0.32),
              )
            ],
          ),
        ),
        /*Material(
          color: Colors.pink,
          shadowColor: Colors.blue,
          child: Padding(padding: EdgeInsets.all(120)),
          shape: CircleBorder(
            side: BorderSide(color: Colors.white, width: 30.0),
          ),
        ),*/
      ),
    );
  }
}

class CircleGreen extends StatelessWidget {
  const CircleGreen({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Transform.translate(
        offset: Offset(190.0, 150.0),
        child: Container(
          width: size.width * 0.95,
          height: size.width * 0.75,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 100,
                color: AppColors.mainGreen.withOpacity(0.32),
              )
            ],
          ),
        ),
        /*Material(
          color: Colors.pink,
          shadowColor: Colors.blue,
          child: Padding(padding: EdgeInsets.all(120)),
          shape: CircleBorder(
            side: BorderSide(color: Colors.white, width: 30.0),
          ),
        ),*/
      ),
    );
  }
}
