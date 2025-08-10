import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../logics/counter_logic.dart';

class StateDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Detail Page'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context){

    int counter = context.watch<CounterLogic>().counter;

    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Detail Counter : $counter"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {
                 context.read<CounterLogic>().decrease();
              },
             icon: Icon(Icons.remove),
             ),
              IconButton(onPressed: (){
                context.read<CounterLogic>().increase();
              },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
