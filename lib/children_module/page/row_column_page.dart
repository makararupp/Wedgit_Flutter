import 'package:flutter/material.dart';

class RowColumnPage extends StatefulWidget {
  const RowColumnPage({super.key});

  @override
  State<RowColumnPage> createState() => _RowColumnPageState();
}

class _RowColumnPageState extends State<RowColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
  // AppBar can't create by the widget.
  AppBar _buildAppBar(){
   return AppBar(
     backgroundColor: Colors.black,
      title: _buildTopMenu(),
   );
  }

  Widget _buildTopMenu(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Makara'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Makara'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Makara'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Makara'),
        ),
      ],
    );
  }

  Widget _buildBody(){
    return Container(
      alignment: Alignment.center,
      child: _buildRow(),
    );
  }
  
  Widget _buildRow(){
   return Container(
     color: Colors.teal.withOpacity(0.5),
     child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Container(width: 50.0,height: 120, color: Colors.blue,),
           Container(width: 40.0,height: 150, color: Colors.yellow,),
           Container(width: 60.0,height: 60, color: Colors.lime,),
           Container(width: 20.0,height: 90, color: Colors.orange,),
           Container(width: 30.0,height: 100, color: Colors.purple,),
           Container(width: 50.0,height: 50, color: Colors.blueGrey,),
         ],
     ),
   );
  }

  Widget _buildColumn(){
    return Container(
      color: Colors.teal.withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 150.0,height: 120, color: Colors.blue,),
          Container(width: 150.0,height: 150, color: Colors.yellow,),
          Container(width: 60.0,height: 60, color: Colors.lime,),
          Container(width: 120.0,height: 90, color: Colors.orange,),
          Container(width: 60.0,height: 100, color: Colors.purple,),
          Container(width: 150.0,height: 50, color: Colors.blueGrey,),
        ],
      ),
    );
  }

}
