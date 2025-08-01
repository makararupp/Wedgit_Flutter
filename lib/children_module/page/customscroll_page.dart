import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/children_module/constants/movielist_constant.dart';
import 'package:projects/children_module/models/movie_model.dart';

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
          _buildListView()
      ],
    );
  }

  Widget _buildAppBar(){
    return SliverAppBar(
      backgroundColor: Colors.blue,
      title: Text('Custom Scroll View'),
    );
  }

  Widget _buildListView(){
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index){
              return _buildItem(movieListConstant[index]);
            },
          childCount: movieListConstant.length,
        ),
    );
  }

  Widget _buildItem(Movie movie){
    return Card(
      child: Stack(
       alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "${movie.title}",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                height: 350,
                width: double.maxFinite,
                child: Image.network(
                  movie.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                   IconButton(onPressed: (){},
                       icon: Icon(CupertinoIcons.heart)
                   ) ,
                  IconButton(onPressed: (){},
                      icon: Icon(CupertinoIcons.chat_bubble)
                  ) ,
                  IconButton(onPressed: (){},
                      icon: Icon(CupertinoIcons.arrow_up_circle)
                  ) ,
                  Spacer(),
                  IconButton(onPressed: (){},
                      icon: Icon(CupertinoIcons.bookmark)
                  ) ,
                ],
              ),
            ],
          ),
          Icon(Icons.play_circle, size: 100.0,color: Colors.white54,),
        ],
      ),
    );
  }
}
