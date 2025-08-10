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

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildMenu(context),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Following the host selection announcement, "
                    "Prime Minister Hun Sen approved the final design of the Games' main stadium."
                    "[20] During a state visit by Hun Sen to Beijing in May 2014, Chinese President "
                    "and General Secretary of the Communist Party Xi Jinping promised to fund the construction "
                    "of the main stadium of the new multi-purpose sports complex on the satellite city of Phnom Penh in Khan Chroy Changvar."
                    " The 60,000-seat main stadium, which was estimated to cost about USD 157 million and was built by a Chinese construction firm,"
                    " was completed between 2019 and 2020 with a Chinese grant covering the entire project.",
                  style: TextStyle(fontSize: 20 + counter.toDouble()),
                ),
              ),
            ),
          ),
        ],
      );
  }

  Widget _buildMenu(BuildContext context){
   return Container(
     color: Colors.pinkAccent,
     child: Row(
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
   );
  }
}
