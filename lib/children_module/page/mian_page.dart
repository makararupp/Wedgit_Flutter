import 'package:flutter/material.dart';

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
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: Center(
           child: Text("Multiple Page",
             style: TextStyle(color: Colors.white),
           ),
       ),
     ),
   );
  }

  Widget _buildBottomNavigationBar(){
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: (Icon(Icons.home)),label: "Home"),
            BottomNavigationBarItem(icon: (Icon(Icons.menu)),label: "Menu"),
            BottomNavigationBarItem(icon: (Icon(Icons.play_circle)),label: "Play"),
            BottomNavigationBarItem(icon: (Icon(Icons.search)),label: "Search"),
          ]
      );
  }
}
