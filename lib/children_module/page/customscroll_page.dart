import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({super.key});

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return CustomScrollView(
      slivers: [
          _buildAppBar(),
      ],
    );
  }

  Widget _buildAppBar(){
    return SliverAppBar(
      backgroundColor: Colors.blue,
      title: Text('Custom Scroll View'),
    );
  }
}
