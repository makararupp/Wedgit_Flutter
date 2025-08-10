import 'package:flutter/material.dart';

class NoneStateDetailPage extends StatefulWidget {
   // create the constructor .
   int counter;

   NoneStateDetailPage(this.counter);

  @override
  State<NoneStateDetailPage> createState() => _NoneStateDetailPageState();
}

class _NoneStateDetailPageState extends State<NoneStateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Detail Page',
          style: TextStyle(color: Colors.white,fontSize: 24.0),
        ),
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody(){
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Text("Detail Counter :${widget.counter}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                    setState(() {
                  widget.counter--;
             });},
             icon: Icon(Icons.remove,size: 28.0),
             ),
              IconButton(onPressed: (){
                setState(() {
                  widget.counter++;
                });},
                icon: Icon(Icons.add,size: 28.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
