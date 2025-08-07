import 'package:flutter/material.dart';
import 'package:projects/children_module/page/list_view_page.dart';
import 'package:projects/children_module/page/row_column_page.dart';
import 'package:projects/children_module/page/tik_tok.dart';

import 'customscroll_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody(){
   return IndexedStack(
     index: _currentIndex,
     children: [
       TikTokViewPage(),
       ListViewPage(),
       RowColumnPage(),
       CustomPage(),
     ],
   );
  }
  int _currentIndex = 0;

  Widget _buildBottomNavigationBar(){
      return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          //showSelectedLabels: false,
         // showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: (Icon(Icons.home)),label: "Home"),
            BottomNavigationBarItem(icon: (Icon(Icons.play_circle)),label: "Play"),
            BottomNavigationBarItem(icon: (Icon(Icons.more_horiz)),label: "More"),
            BottomNavigationBarItem(icon: (Icon(Icons.search)),label: "Search"),
          ]
      );
  }
}
