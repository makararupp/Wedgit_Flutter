import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/children_module/constants/movielist_constant.dart';

import '../models/movie_model.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("ListView Page",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody(){
    return ListView(
      children: [
        _buildStory(),
      ],
    );
  }
  Widget _buildStory(){
    return SizedBox(
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: movieListConstant.length,
        itemBuilder: (context, index){
          return  _buildStoryItem(movieListConstant[index]);
        },
      ),
    );
  }

  Widget _buildStoryItem(Movie item){
      return Container(
        width: 120.0,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(item.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
  }
}
