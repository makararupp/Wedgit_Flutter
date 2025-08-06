import 'package:flutter/material.dart';


class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
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
    return _buildListViewBuilder();
  }

  Widget _buildListViewBuilder(){
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
         physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount:  10,
          itemBuilder: (context , index){
             return Container(
               color: Colors.blue,
               margin: EdgeInsets.all(10.0),
               padding: EdgeInsets.all(20.0),
               child: Text('$index'),
             );
          },
      ),
    );
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
