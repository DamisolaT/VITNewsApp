
import 'package:flutter/material.dart';
import 'package:vit_news_app/discover_page.dart';
import 'package:vit_news_app/home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex=0;
  final  screens = [HomeView(), DiscoverPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
          type: BottomNavigationBarType.shifting,
          //fixedColor: Colors.blue,
          iconSize: 30,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black26,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          onTap: (value){
          currentindex= value;
          setState(() {
            
          });
          },
          items: [
      BottomNavigationBarItem(backgroundColor: Colors.white, icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(backgroundColor: Colors.white,icon: Icon(Icons.not_interested_outlined), label: 'Globe'),
        BottomNavigationBarItem(backgroundColor: Colors.white,icon: Icon(Icons.panorama_vertical_sharp), label: 'Shape'),
        BottomNavigationBarItem(backgroundColor: Colors.white,icon: Icon(Icons.person), label: 'Profile'),

      ]),
      body: IndexedStack(index: currentindex, children: screens,),
    );
  }
}
