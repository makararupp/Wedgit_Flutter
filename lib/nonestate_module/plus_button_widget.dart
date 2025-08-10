import 'package:flutter/material.dart';

class PlusButtonWidget extends StatefulWidget {
  const PlusButtonWidget({super.key});

  @override
  State<PlusButtonWidget> createState() => _PlusButtonWidgetState();
}

class _PlusButtonWidgetState extends State<PlusButtonWidget> {
  @override
  Widget build(BuildContext context) {

    int _counter =0;
    return IconButton(onPressed: ()
    {
      setState(() {
        _counter++;
      });
    },
      icon: Icon(Icons.add ,color: Colors.white,size: 28.0,),
    );
  }
}
