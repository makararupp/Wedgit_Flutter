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
        _buildViewBuilder(2),
        _buildColumnList(3),
      ],
    );
  }

  Widget _buildColumnList(int count){
    return SingleChildScrollView(
      padding: EdgeInsets.all(10.0),
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          _buildIGPost(),
          _buildIGPost2(),
          _buildIGPost3(),
        ],
      ),
    );
  }

  Widget _buildIGPost(){
    String ig = "https://media.licdn.com/dms/image/v2/D5603AQEeZIJ_l6WsFQ/profile-displayphoto-shrink_800_800/B56Zcg_ESSGoAc-/0/1748605093428?e=1755734400&v=beta&t=rCK1ZUDk0u9c6St0EDdU9lT2NVMdARr5AzhXYr5Iupg";
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children:
            [
              IconButton(onPressed: (){},  icon: Icon(Icons.face)),
              Text("sam_makara7777"),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),),
            ],

          ),
          Container(
            height: 400.0,
            width: double.maxFinite,
            child: Image.network(ig,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(CupertinoIcons.heart)
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.chat_bubble),
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.arrow_up_circle),
              ),
              Spacer(),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.bookmark),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildIGPost2(){
    String ig = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA7GhrOqUPfstlE2t4W3ij99FVYWJKY3Td3Q&s";
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children:
            [
              IconButton(onPressed: (){},  icon: Icon(Icons.face)),
              Text("Dragon_movie"),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),),
            ],

          ),
          Container(
            height: 400.0,
            width: double.maxFinite,
            child: Image.network(ig,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(CupertinoIcons.heart)
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.chat_bubble),
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.arrow_up_circle),
              ),
              Spacer(),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.bookmark),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildIGPost3(){
    String ig = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAkKPFaTuL7DhzknMnOvk5s32984nWlPyMvg&s";
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children:
            [
              IconButton(onPressed: (){},  icon: Icon(Icons.face)),
              Text("dev_ops"),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),),
            ],

          ),
          Container(
            height: 400.0,
            width: double.maxFinite,
            child: Image.network(ig,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(CupertinoIcons.heart)
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.chat_bubble),
              ),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.arrow_up_circle),
              ),
              Spacer(),
              IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.bookmark),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildViewBuilder(int count){
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 1/2,
      ),
      itemCount: movieListConstant.length,
      itemBuilder: (context, index){
        return Container(
          child: Image.network(
            movieListConstant[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      },
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
