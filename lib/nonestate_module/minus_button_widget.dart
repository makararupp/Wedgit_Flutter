import 'package:flutter/material.dart';

class MinusButtonWidget extends StatefulWidget {
  const MinusButtonWidget({super.key});

  @override
  State<MinusButtonWidget> createState() => _MinusButtonWidgetState();
}

class _MinusButtonWidgetState extends State<MinusButtonWidget> {
  @override
  Widget build(BuildContext context) {

    int _counter =0;
    return IconButton(onPressed: ()
    {
      setState(() {
        _counter--;
      });
    },
      icon: Icon(Icons.remove,color: Colors.white,size: 28.0,),
    );
  }
}
