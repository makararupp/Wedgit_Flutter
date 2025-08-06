import 'package:flutter/material.dart';

import '../constants/movielist_constant.dart';
import '../models/movie_model.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text("List View Builder",
            style: TextStyle(color: Colors.white),
          ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return ListView(
      children: [
         _buildStory(),
         _buildListViewBuilder(),
      ],
    );
  }

  List<String> images = [
    "https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
    "https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
    "https://image.tmdb.org/t/p/w500/rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg"
  ];

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

  Widget _buildListViewBuilder(){
    return ListView.builder(
      shrinkWrap: true,
       physics: BouncingScrollPhysics(),
        itemCount: images.length,
        itemBuilder: (context , index){
           return Container(
             color: Colors.black,
             margin: EdgeInsets.all(10.0),
             padding: EdgeInsets.all(20.0),
             child: Image.network(images[index], fit: BoxFit.cover,),
           );
        },
    );
  }

  Widget _buildListView(){
    return ListView(
      children: [
        Container(width: 60.0,height: 100, color: Colors.purple,),
        Container(width: 150.0,height: 50, color: Colors.blueGrey,),
        Container(width: 150.0,height: 120, color: Colors.blue,),
        Container(width: 150.0,height: 150, color: Colors.yellow,),
      ],
    );
  }

}
