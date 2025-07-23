import 'package:flutter/material.dart';

class GradViewPage extends StatefulWidget {
  const GradViewPage({super.key});

  @override
  State<GradViewPage> createState() => _GradViewPageState();
}

class _GradViewPageState extends State<GradViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Page",style: TextStyle(color:Colors.white),),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return GridView.count(
      padding: EdgeInsets.all(15.0),
      physics: BouncingScrollPhysics(),
      crossAxisCount: 3, // number of columns.
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      childAspectRatio: 3/4, // x/y.វាប្រៀបបានដូចរូបថត។
      children: [
        Container(width: 60.0,height: 100, color: Colors.purple,),
        Container(width: 150.0,height: 50, color: Colors.blueGrey,),
        Container(width: 150.0,height: 120, color: Colors.blue,),
        Container(width: 150.0,height: 150, color: Colors.yellow,),
        Container(width: 60.0,height: 60, color: Colors.lime,),
        Container(width: 120.0,height: 90, color: Colors.orange,),
        Container(width: 60.0,height: 100, color: Colors.red,),
        Container(width: 150.0,height: 50, color: Colors.blueGrey,),
      ],
    );
  }
}
