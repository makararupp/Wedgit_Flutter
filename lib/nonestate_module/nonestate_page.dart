import 'package:flutter/material.dart';
import 'package:projects/nonestate_module/minus_button_widget.dart';
import 'package:projects/nonestate_module/nonestate_detail_page.dart';
import 'package:projects/nonestate_module/plus_button_widget.dart';
import 'package:projects/nonestate_module/text_widget.dart';

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
        MinusButtonWidget(),
        PlusButtonWidget(),
        IconButton(
          onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context)=> NoneStateDetailPage(_counter)
            ),
          );
        },
            icon: Icon(Icons.settings,color: Colors.white,),
        ),
      ],
    );
  }
  int _counter = 0;
  Widget _buildBody(){
    return TextWidget(_counter);
  }
}
