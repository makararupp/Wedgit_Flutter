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
         SliverToBoxAdapter(
             child: _buildPageView(),
         ),
      ],
    );
  }

  Widget _buildPageView(){
    return SizedBox(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      child: PageView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: movieListConstant.length,
          itemBuilder:(context, index){
            return _buildItems(movieListConstant[index]);
          }
      ),
    );
  }

  Widget _buildItems(Movie model){
    return Stack(
      alignment: Alignment.center,
      children: [
        //custom fill Positioned:
        Positioned.fill(
          child: Image.network(model.imageUrl, fit: BoxFit.cover,),
        ),
        Positioned(
          right: 10.0,
          bottom: 100.0,
          child:Column(
            children: [
              IconButton(onPressed: (){},
                icon: Icon(
                  Icons.face,
                  color: Colors.white,
                ),
              ),
              IconButton(onPressed: (){},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              IconButton(onPressed: (){},
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
              ),
              IconButton(onPressed: (){},
                icon: const Icon(
                  CupertinoIcons.arrowshape_turn_up_right_fill,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


  bool _pind = true;

  Widget _buildAds(){
    return SliverAppBar(
      pinned: _pind,
        actions: [
            IconButton(onPressed: (){
              setState(() {
                _pind = !_pind;
              });
            },
                icon: Icon(_pind ? CupertinoIcons.pin_slash_fill : CupertinoIcons.pin_fill,color: Colors.white,),
            ),
        ],
        flexibleSpace: Container(
          child: Image.network("https://cdn.britannica.com/24/77424-050-4FF80B58/Angkor-Wat-Cambodia.jpg",
            fit: BoxFit.cover,
          ),
        ),
      bottom: PreferredSize(preferredSize: Size.fromHeight(80.0),
          child: Container(),
      ),
    );
  }

  Widget _buildAppBar(){
    return SliverAppBar(
      backgroundColor: Colors.blue,
      title: Text('Custom Scroll View'),
      floating: true,
     // pinned: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
      ],
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
