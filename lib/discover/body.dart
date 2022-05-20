import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neaon_movie_app_ui/widgets/backgound.dart';

import '../animation/FadeAnimation.dart';
import '../models/movies.dart';
import '../screen/movie_info_page.dart';
import '../widgets/big_text.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/small_text.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late ScrollController _scrollController;

  bool _isScrolled = false;

  List<dynamic> newMovieList = [];
  List<dynamic> upComingMovieList = [];
  List<dynamic> topActionMovieList = [];

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollChange);
    movies();

    super.initState();

    newMoviePageController.addListener(() {
      setState(() {
        _currentPageValue = newMoviePageController.page!;
      });
      print(_currentPageValue);
    });
    upcomingMoviePageController.addListener(() {
      setState(() {
        _currentPageValue = upcomingMoviePageController.page!;
      });
      print(_currentPageValue);
    });
    topActionMoviePageController.addListener(() {
      setState(() {
        _currentPageValue = topActionMoviePageController.page!;
      });
      print(_currentPageValue);
    });
  }

  void _listenToScrollChange() {
    if (_scrollController.offset >= 50.0) {
      setState(() {
        _isScrolled = true;
      });
    } else {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  PageController newMoviePageController =
      PageController(viewportFraction: 0.32);
  PageController upcomingMoviePageController =
      PageController(viewportFraction: 0.32);
  PageController topActionMoviePageController =
      PageController(viewportFraction: 0.32);

  var _currentPageValue = 0.0;

  @override
  void dispose() {
    newMoviePageController.dispose();
    upcomingMoviePageController.dispose();
    topActionMoviePageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        child: CustomScrollView(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              centerTitle: true,
              expandedHeight: 220.0,
              elevation: 0,
              pinned: true,
              automaticallyImplyLeading: false,
              floating: true,
              stretch: true,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                titlePadding:
                    EdgeInsets.only(left: 40, right: 40, bottom: 100, top: 50),
                stretchModes: [
                  StretchMode.zoomBackground,
                  // StretchMode.fadeTitle
                ],
                title: AnimatedOpacity(
                  opacity: _isScrolled ? 0.0 : 1.0,
                  duration: Duration(milliseconds: 500),
                  child: FadeAnimation(
                    1,
                    BigText(
                      text: 'What would you like to watch?',
                      size: 24,
                    ),
                  ),
                ),
              ),
              bottom: AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 70,
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Row(
                  children: [
                    Expanded(
                      child: FadeAnimation(
                        1.4,
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02),
                          child: RoundedInputField(
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  MovieTile(
                      size, 'New Movies', newMovieList, newMoviePageController),
                  MovieTile(size, 'Upcoming Movies', upComingMovieList,
                      upcomingMoviePageController),
                  MovieTile(size, 'Top Action Movies', topActionMovieList,
                      topActionMoviePageController)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container MovieTile(
      Size size, String tileTitle, List movieList, PageController controller) {
    return Container(
      padding: EdgeInsets.only(
        top: size.height * 0.015,
      ),
      height: size.height * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeAnimation(
            1.4,
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: BigText(
                      text: tileTitle,
                      size: 17,
                    ),
                  ),
                  SmallText(text: 'See all ', size: 14),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Expanded(
            child: PageView.builder(
              padEnds: false,
              physics: BouncingScrollPhysics(),
              controller: controller,
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                return movieCard(movieList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> movies() async {
    final String response = await rootBundle.loadString('assets/movies.json');
    final data = await json.decode(response);

    setState(() {
      newMovieList =
          data['newMovies'].map((data) => Movies.fromJson(data)).toList();
      upComingMovieList =
          data['upcomingMovies'].map((data) => Movies.fromJson(data)).toList();
      topActionMovieList =
          data['topActionMovies'].map((data) => Movies.fromJson(data)).toList();
    });
  }

  movieCard(Movies movies) {
    Size size = MediaQuery.of(context).size;
    return FadeAnimation(
      1,
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieInfoPage(movies: movies),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.015),
              width: size.width * 0.30,
              height: size.height * 0.20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(movies.movieThumb),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
              child: SizedBox(
                width: size.width * 0.272,
                child: SmallText(
                  text: movies.movieName,
                  size: 13,
                  maxline: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
