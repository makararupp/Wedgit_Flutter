import 'package:flutter/material.dart';


class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text("List View Builder",
            style: TextStyle(color: Colors.white),
          ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return _buildListView();
  }

  Widget _buildListView(){
    return ListView(
      children: [
        Container(width: 60.0,height: 100, color: Colors.purple,),
        Container(width: 150.0,height: 50, color: Colors.blueGrey,),
        Container(width: 150.0,height: 120, color: Colors.blue,),
        Container(width: 150.0,height: 150, color: Colors.yellow,),
      ],
    );
  }

}
