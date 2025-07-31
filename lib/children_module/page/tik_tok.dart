import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projects/children_module/models/movie_model.dart';
import '../constants/movielist_constant.dart';

class TikTokViewPage extends StatefulWidget {
  const TikTokViewPage({super.key});

  @override
  State<TikTokViewPage> createState() => _TikTokViewPageState();
}

class _TikTokViewPageState extends State<TikTokViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("TikTok Page",style: TextStyle(color:Colors.white),),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildButtom(),
    );
  }

  Widget _buildButtom(){
    return BottomAppBar(
      color: Colors.white,
      notchMargin: 8,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(onPressed: (){debugPrint("Home");},
            icon: Icon(FontAwesomeIcons.house),
          ),
          IconButton(onPressed: (){debugPrint("Friends");},
            icon: Icon(FontAwesomeIcons.person),
          ),
          IconButton(onPressed: (){debugPrint("Play");},
            icon: Icon(FontAwesomeIcons.solidBookmark),
          ),
          IconButton(onPressed: (){debugPrint("more");},
              icon: Icon(FontAwesomeIcons.info)
          ),
        ],
      ),
    );
  }

  Widget _buildBody(){
    return PageView.builder(
      physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: movieListConstant.length,
        itemBuilder:(context, index){
          return _buildlItem(movieListConstant[index]);
        }
    );
  }

  Widget _buildlItem(Movie model){
    return Stack(
      alignment: Alignment.center,
      children: [
        //custom fill Positioned:
        Positioned.fill(
              child: Image.network(model.imageUrl, fit: BoxFit.cover,),
        ),
        Positioned(
            right: 10.0,
            bottom: 30.0,
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

}
