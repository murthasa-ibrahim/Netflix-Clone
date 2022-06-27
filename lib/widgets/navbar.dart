import 'package:flutter/material.dart';
ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);
class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (ctx,int newIndex,_){
      return  BottomNavigationBar(
        onTap: (index){
          indexChangeNotifier.value = index;
        },
      type: BottomNavigationBarType.fixed,
      currentIndex: newIndex,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.collections), label: 'Hot & New'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Download')
    ]); 
    });
  }
}
    






    class murr {
     
    }