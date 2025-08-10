import 'package:flutter/material.dart';
import 'minus_button_widget.dart';
import 'plus_button_widget.dart';
import 'state_detail_page.dart';
import 'text_widget.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

//The detail page no need constructor.
class _StatePageState extends State<StatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
  AppBar _buildAppBar(){
    return AppBar(
      title: Text("State App"),
      actions: [
        MinusButtonWidget(),
        PlusButtonWidget(),
        IconButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context)=> StateDetailPage(),
              ),
            );
          },
          icon: Icon(Icons.settings,color: Colors.white,),
        ),
      ],
    );
  }

  Widget _buildBody(){
    return TextWidget();
  }
}
