import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/home/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}
