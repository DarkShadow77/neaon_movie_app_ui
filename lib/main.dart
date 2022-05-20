import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neaon_movie_app_ui/screen/home_page.dart';
import 'package:neaon_movie_app_ui/utils/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.backgroundColor,
      systemNavigationBarColor: AppColors.backgroundColor,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(fontFamily: 'OpenSans'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomePage()),
      extendBody: true,
    );
  }
}
