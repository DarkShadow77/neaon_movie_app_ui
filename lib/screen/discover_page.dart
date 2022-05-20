import 'package:clippy_flutter/paralellogram.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neaon_movie_app_ui/discover/body.dart';
import 'package:neaon_movie_app_ui/utils/colors.dart';
import 'package:neaon_movie_app_ui/widgets/bottom_bar.dart';

class DiscoverPage extends StatelessWidget {
  DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: Body()),
      bottomNavigationBar: BottomBar(size: size),
    );
  }
}
