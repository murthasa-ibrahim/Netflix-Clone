import 'package:flutter/material.dart';
import 'package:netflix/screens.dart/Hot_and%20_new.dart';
import 'package:netflix/screens.dart/downloads.dart';
import 'package:netflix/screens.dart/home.dart';
import 'package:netflix/screens.dart/search.dart';
import 'package:netflix/widgets/navbar.dart';

class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);
  final _pages =[
    Home(),
    HotAndNew(),
    Search(),
    Downloads()

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int index,_){
        return _pages[index];
      })
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
