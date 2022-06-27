import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendignMovies = [];
  final String apiKey = '';
  final readAccessToken = '';

  loadMovies() async {
    TMDB tmdbWithCustomLog = TMDB(ApiKeys(apiKey, readAccessToken),
        // ignore: prefer_const_constructors
        logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendingResults = await tmdbWithCustomLog.v3.trending.getTrending();
  }
   
  
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Text('home'),
      )),
    );
  }
}
