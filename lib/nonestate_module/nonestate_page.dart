import 'package:flutter/material.dart';

class NoneStatePage extends StatefulWidget {
  const NoneStatePage({super.key});

  @override
  State<NoneStatePage> createState() => _NoneStatePageState();
}

class _NoneStatePageState extends State<NoneStatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
  
  AppBar _buildAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: Text("None State App",
        style: TextStyle(color: Colors.white,fontSize: 24.0),
      ),
      actions: [
        IconButton(onPressed: ()
        {
          setState(() {
            _counter--;
          });
        },
            icon: Icon(Icons.remove,color: Colors.white,size: 28.0,),
        ),
        IconButton(onPressed: ()
        {
          setState(() {
            _counter++;
          });
        },
            icon: Icon(Icons.add, color: Colors.white,size: 28.0,),
        ),
      ],
    );
  }

  int _counter = 0;

  Widget _buildBody(){
    return Container(
      alignment: Alignment.center,
      child: Text("Counter :${_counter}"),
    );
  }
}
